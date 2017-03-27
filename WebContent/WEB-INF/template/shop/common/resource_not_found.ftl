<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${base}/resources/static/image/favicon.png" rel="icon" />
    <title>Shop</title>
    <meta name="description" content="shop">
	[#include "/shop/proshow/include/head.ftl" /]
</head>
<body>
    <div class="wrapper-wide">
   		[#include "/shop/proshow/include/header.ftl" /]
        <div id="container">
            <div class="container">
                <div class="row">
                    <!--Middle Part Start-->
                    <div id="content" class="col-sm-12">
                        <h1 class="title-404 text-center">404</h1>
                        <p class="text-center lead">Sorry!<br> The page you requested cannot be found! </p>
                        <div class="buttons text-center"> <a class="btn btn-primary btn-lg" href="${base}/">Continue</a> </div>
                    </div>
                    <!--Middle Part End -->
                </div>
            </div>
        </div>						
	    [#include "/shop/proshow/include/footer.ftl" /] 
	</div>
	[#include "/shop/proshow/include/bottom.ftl" /]
</body>
</html>