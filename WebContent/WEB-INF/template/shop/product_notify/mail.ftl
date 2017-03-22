<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("shop.productNotify.mailTitle")} - Powered By shop</title>
<meta name="author" content="shop Team" />
<meta name="copyright" content="shop" />
</head>
<body>
	<p>
		${message("shop.productNotify.welcome")}:
	</p>
	<p>
		${message("shop.productNotify.content", productNotify.product.name)}
	</p>
	<p>
		<a href="${setting.siteUrl}${productNotify.product.path}">${setting.siteUrl}${productNotify.product.path}</a>
	</p>
</body>
</html>