<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=[#if requestCharset?has_content]${requestCharset}[#else]utf-8[/#if]" />
<title>${message("shop.payment.submit")} - Powered By shop</title>
<meta name="author" content="shop Team" />
<meta name="copyright" content="shop" />
</head>
<body onload="javascript: document.forms[0].submit();">
	<form action="${requestUrl}"[#if requestMethod??] method="${requestMethod}"[/#if][#if requestCharset?has_content] accept-charset="${requestCharset}"[/#if]>
		[#list parameterMap.entrySet() as entry]
			<input type="hidden" name="${entry.key}" value="${entry.value}" />
		[/#list]
	</form>
</body>
</html>