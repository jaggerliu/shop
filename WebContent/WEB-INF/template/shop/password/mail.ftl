<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("shop.password.mailTitle")}[#if systemShowPowered] - Powered By shop[/#if]</title>
<meta name="author" content="shop Team" />
<meta name="copyright" content="shop" />
</head>
<body>
	<p>${username}:</p>
	<p>${message("shop.password.welcome")}</p>
	<p>${message("shop.password.content", setting.siteName)}[#if safeKey.expire??](${message("shop.password.expire")}: ${safeKey.expire?string("yyyy-MM-dd HH:mm")})[/#if]</p>
	<p>
		<a href="${setting.siteUrl}/password/reset.jhtml?username=${username}&key=${safeKey.value}" target="_blank">${setting.siteUrl}/password/reset.jhtml?username=${username}&key=${safeKey.value}</a>
	</p>
	<p>${setting.siteName}</p>
	<p>${.now?string("yyyy-MM-dd")}</p>
</body>
</html>