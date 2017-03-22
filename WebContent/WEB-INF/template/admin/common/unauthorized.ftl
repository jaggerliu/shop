<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("admin.unauthorized.title")} - shop </title>
<meta name="author" content="shop Team" />
<meta name="copyright" content="shop" />
<link href="${base}/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/admin/css/error.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="wrap">
		<div class="error">
			<dl>
				<dt>${message("admin.unauthorized.message")}</dt>
				<dd>
					<a href="javascript:;" onclick="window.history.back(); return false;">${message("admin.unauthorized.back")}</a>
				</dd>
			</dl>
		</div>
	</div>
</body>
</html>