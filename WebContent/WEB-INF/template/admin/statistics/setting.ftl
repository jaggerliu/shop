<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("admin.statistics.setting")} - shop </title>
<meta name="author" content="shop Team" />
<meta name="copyright" content="shop" />
<link href="${base}/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/admin/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/common.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/input.js"></script>
<script type="text/javascript">
$().ready(function() {

	[@flash_message /]

});
</script>
</head>
<body>
	<div class="path">
		<a href="${base}/admin/common/index.jhtml">${message("admin.path.index")}</a> &raquo; ${message("admin.statistics.setting")}
	</div>
	<form action="setting.jhtml" method="post">
		<table class="input">
			<tr>
				<th>
					${message("admin.statistics.isEnabled")}:
				</th>
				<td>
					<input type="checkbox" name="isEnabled" value="true"[#if setting.isCnzzEnabled] checked="checked"[/#if] />
				</td>
			</tr>
			<tr>
				<th>
					&nbsp;
				</th>
				<td>
					<input type="submit" class="button" value="${message("admin.common.submit")}" />
					<input type="button" class="button" value="${message("admin.common.back")}" onclick="location.href='../common/index.jhtml'" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>