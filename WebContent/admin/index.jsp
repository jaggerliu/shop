<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="net.shopxx.util.SpringUtils"%>
<%
String base = request.getContextPath();
ApplicationContext applicationContext = SpringUtils.getApplicationContext();
if (applicationContext != null) {
	response.sendRedirect("login.jsp");
} else {
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>提示信息</title>
<meta http-equiv="expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta name="author" content="SHOP Team" />
<meta name="copyright" content="SHOP" />
<link href="<%=base%>/resources/admin/css/common.css" rel="stylesheet"
	type="text/css" />
<link href="<%=base%>/resources/admin/css/login.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<fieldset>
		<legend>系统出现异常</legend>
		<p>
			请检查SHOP程序是否已正确安装 [<a href="<%=base%>/install/">点击此处进行安装</a>]
		</p>
		<p>
			<strong>提示: SHOP安装完成后必须重新启动WEB服务器</strong>
		</p>
	</fieldset>
</body>
</html>
<%
}
%>