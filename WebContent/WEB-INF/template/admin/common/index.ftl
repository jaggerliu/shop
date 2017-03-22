 <!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("admin.index.title")} - shop </title>
<meta name="author" content="shop Team" />
<meta name="copyright" content="shop" />
<link href="${base}/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.input .powered {
	font-size: 11px;
	text-align: right;
	color: #cccccc;
}
</style>
</head>
<body>
	<div class="path">
		${message("admin.index.title")}
	</div>
	<table class="input">
		<tr>
			<th>
				${message("admin.index.systemName")}:
			</th>
			<td>
				${systemName}
			</td>
			<th>
				${message("admin.index.systemVersion")}:
			</th>
			<td>
				${systemVersion}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.official")}:
			</th>
			<td>
				<a href="#" target="_blank">###</a>
			</td>
			<th>
				${message("admin.index.bbs")}:
			</th>
			<td>
				<a href="#" target="_blank">###</a>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				&nbsp;
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.javaVersion")}:
			</th>
			<td>
				${javaVersion}
			</td>
			<th>
				${message("admin.index.javaHome")}:
			</th>
			<td>
				${javaHome}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.osName")}:
			</th>
			<td>
				${osName}
			</td>
			<th>
				${message("admin.index.osArch")}:
			</th>
			<td>
				${osArch}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.serverInfo")}:
			</th>
			<td>
				${serverInfo}
			</td>
			<th>
				${message("admin.index.servletVersion")}:
			</th>
			<td>
				${servletVersion}
			</td>
		</tr>
		<tr>
			<td colspan="4">
				&nbsp;
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.marketableProductCount")}:
			</th>
			<td>
				${marketableProductCount}
			</td>
			<th>
				${message("admin.index.notMarketableProductCount")}:
			</th>
			<td>
				${notMarketableProductCount}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.stockAlertProductCount")}:
			</th>
			<td>
				${stockAlertProductCount}
			</td>
			<th>
				${message("admin.index.outOfStockProductCount")}:
			</th>
			<td>
				${outOfStockProductCount}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.waitingPaymentOrderCount")}:
			</th>
			<td>
				${waitingPaymentOrderCount}
			</td>
			<th>
				${message("admin.index.waitingShippingOrderCount")}:
			</th>
			<td>
				${waitingShippingOrderCount}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.memberCount")}:
			</th>
			<td>
				${memberCount}
			</td>
			<th>
				${message("admin.index.unreadMessageCount")}:
			</th>
			<td>
				${unreadMessageCount}
			</td>
		</tr>
		<tr>
			<td class="powered" colspan="4">
				COPYRIGHT © 2005-2013 ALL RIGHTS RESERVED.
			</td>
		</tr>
	</table>
</body>
</html>