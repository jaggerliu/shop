<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("admin.brand.edit")} - shop </title>
<meta name="author" content="shop Team" />
<meta name="copyright" content="shop" />
<link href="${base}/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/admin/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/resources/admin/editor/kindeditor.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/common.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/input.js"></script>
<script type="text/javascript">
$().ready(function() {

	var $inputForm = $("#inputForm");
	var $type = $("#type");
	var $logo = $("#logo");
	var $browserButton = $("#browserButton");
	
	[@flash_message /]
	
	$browserButton.browser();
	
	$type.change(function() {
		if ($(this).val() == "text") {
			$logo.val("").prop("disabled", true);
			$browserButton.prop("disabled", true);
		} else {
			$logo.prop("disabled", false);
			$browserButton.prop("disabled", false);
		}
	});
	
	// 表单验证
	$inputForm.validate({
		rules: {
			name: "required",
			logo: "required",
			order: "digits"
		}
	});
	
});
</script>
</head>
<body>
	<div class="path">
		<a href="${base}/admin/common/index.jhtml">${message("admin.path.index")}</a> &raquo; ${message("admin.brand.edit")}
	</div>
	<form id="inputForm" action="update.jhtml" method="post">
		<input type="hidden" name="id" value="${contact.id}" />
		<table class="input">
			<tr>
				<th>
					<span class="requiredField">*</span>firstname:
				</th>
				<td>
					<input type="text" name="firstname" class="text" value="${contact.firstname}" maxlength="200" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<th>
					<span class="requiredField">*</span>lastname:
				</th>
				<td>
					<input type="text" name="lastname" class="text" value="${contact.lastname}" maxlength="200" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<th>
					<span class="requiredField">*</span>email:
				</th>
				<td>
					<input type="text" name="email" class="text" value="${contact.email}" maxlength="200" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<th>
					<span class="requiredField">*</span>联系电话:
				</th>
				<td>
					<input type="text" name="phone" class="text" value="${contact.phone}" maxlength="200" readonly="readonly"/>
				</td>
			</tr>			
			<tr>
				<th>
					<span class="requiredField">*</span>时间:
				</th>
				<td>
					<input type="text" class="text" value="${contact.createDate}" maxlength="200" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<th>
					${message("admin.common.setting")}:
				</th>
				<td>
					<label>
						<input type="checkbox" name="isLook" value="true"[#if contact.isLook] checked="checked"[/#if] />是否回复
						<input type="hidden" name="_isLook" value="false" />
					</label>
				</td>
			</tr>
			<tr>
				<th>
					内容:
				</th>
				<td>
					<textarea name="content" class="editor" readonly="readonly">${contact.content}</textarea>
				</td>
			</tr>			
			<tr>
				<th>
					&nbsp;
				</th>
				<td>
					<input type="submit" class="button" value="${message("admin.common.submit")}" />
					<input type="button" class="button" value="${message("admin.common.back")}" onclick="location.href='list.jhtml'" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>