<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${base}/resources/static/image/favicon.png" rel="icon" />
    <title>Shop</title>
    <meta name="description" content="Responsive and clean html template design for any kind of ecommerce webshop">
	[#include "/shop/proshow/include/head.ftl" /]
</head>
<body>
    <div class="wrapper-wide">
   		[#include "/shop/proshow/include/header.ftl" /]
        <div id="container">
            <div class="container">
                <!-- Breadcrumb Start-->
                <ul class="breadcrumb">
                    <li><a href="${base}"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
                <!-- Breadcrumb End-->
                <div class="row">
                    <!--Middle Part Start-->
                    <div id="content" class="col-sm-9">
                        <h1 class="title">Contact Us</h1>
                        <h3 class="subtitle">Our Location</h3>
                        <div class="row">
                            <div class="col-sm-3"><img src="${base}/resources/static/image/product/store_location-275x180.jpg" alt="MarketShop Template" title="MarketShop Template" class="img-thumbnail" /></div>
                            <div class="col-sm-3"><strong>MarketShop Template</strong><br />
                                <address>
					              Central Square,<br />
					              22 Hoi Wing Road,<br />
					              New Delhi,<br />
					              India
					              </address>
                            </div>
                            <div class="col-sm-3"><strong>Telephone</strong><br> +91 9898989898<br />
                                <br />
                                <strong>Fax</strong><br> +91 9898989898 </div>
                            <div class="col-sm-3"> <strong>Opening Times</strong><br /> 24X7 Customer Care<br />
                                <br />
                                <strong>Comments</strong><br /> This field is for any special notes you would like to tell the customer i.e. Store does not accept cheques. </div>
                        </div>

                    </div>
                    <aside id="column-right" class="col-sm-3 hidden-xs">
                        <div class="list-group">
                            <h2 class="subtitle">Custom Content</h2>
                            <p>This is a CMS block edited from admin. You can insert any content (HTML, Text, Images) Here. </p>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make
                                a type specimen book. </p>
                            <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                        </div>
                        <div class="banner owl-carousel">
                            <div class="item">
                                <a href="#"><img src="image/banner/small-banner1-265x350.jpg" alt="small banner" class="img-responsive" /></a>
                            </div>
                            <div class="item">
                                <a href="#"><img src="image/banner/small-banner-265x350.jpg" alt="small banner1" class="img-responsive" /></a>
                            </div>
                        </div>
                    </aside>
                    <!--Middle Part End -->
                </div>
            </div>
        </div>
    [#include "/shop/proshow/include/footer.ftl" /] 
    </div>
    [#include "/shop/proshow/include/bottom.ftl" /]
</body>
</html>