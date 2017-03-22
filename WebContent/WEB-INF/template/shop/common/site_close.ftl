<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("shop.siteClose.title")}[#if systemShowPowered] - shop[/#if]</title>
<meta name="author" content="shop Team" />
<meta name="copyright" content="shop" />
<link href="${base}/resources/shop/css/common.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/shop/css/error.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/shop/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/common.js"></script>
</head>
<body>
	[#include "/shop/include/header.ftl" /]
	<div class="container error">
		<div class="span24">
			<div class="main">
				${setting.siteCloseMessage}
			</div>
		</div>
	</div>
	[#include "/shop/include/footer.ftl" /]
</body>
</html>