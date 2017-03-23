<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="description" content="">
	[#include "/shop/proshow/head.ftl" /]
</head>
<body>
 	[#include "/shop/proshow/header.ftl" /]
    <div id="carouselBlk">
 		[@ad_position id = 3 /]
    </div>
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <!-- Sidebar ================================================== -->
                <div id="sidebar" class="span3">
					[#include "/shop/proshow/product_left.ftl" /]
                    <br/>
					[@product_list count = 3 orderBy="monthSales desc"]
					[#list products as product]
					<div class="thumbnail">
					    <img src="[#if product.thumbnail??]${product.thumbnail}[#else]${setting.defaultThumbnailProductImage}[/#if]" alt="${abbreviate(product.name, 20)}" />
					    <div class="caption">
					        <h5>Panasonic</h5>
					        <h4 style="text-align:center">
					            <a class="btn" href="${base}${product.path}"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">${currency(product.price, true)}</a></h4>
					    </div>
					</div><br/> 
					[/#list] 
					[/@product_list]
                </div>
                <!-- Sidebar end=============================================== -->
                <div class="span9">
                    <div class="well well-small">
                        <h4>Featured Products <small class="pull-right">featured products</small></h4>
                        <div class="row-fluid">
                            <div id="featured" class="carousel slide">
                                <div class="carousel-inner">
						        [@product_list count = 12 orderBy="monthSales desc"] 
						        	[#list products?chunk(4) as row] 						       			
						        			<div class="item [#if row_index == 0 ]active[/#if]">
									            <ul class="thumbnails">
									            [#list row as product]
									                <li class="span3">
									                    <div class="thumbnail">
									                        <i class="tag"></i>
									                        <a href="${base}${product.path}"><img src="[#if product.thumbnail??]${product.thumbnail}[#else]${setting.defaultThumbnailProductImage}[/#if]" alt="${product.name}"></a>
									                        <div class="caption">
									                            <h5>${abbreviate(product.name, 20)}</h5>
									                            <h4><a class="btn" href="${base}${product.path}">VIEW</a> <span class="pull-right">${currency(product.price, true)}</span></h4>
									                        </div>
									                    </div>
									                </li>
									               [/#list]
									            </ul>
						       				</div>	
						        	[/#list]
						        [/@product_list]
                    			</div>
                    			<a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
						        <a class="right carousel-control" href="#featured" data-slide="next">›</a>
                    		</div>
                    	</div>
                    </div>	
                    <h4>Latest Products </h4>
					[@product_list count = 16 orderBy="monthSales desc"] 
					<ul class="thumbnails">
					[#list products as product] 	
					    <li class="span3">
					        <div class="thumbnail">
					            <a href="${base}${product.path}"><img src="[#if product.thumbnail??]${product.thumbnail}[#else]${setting.defaultThumbnailProductImage}[/#if]" alt="${product.name}" /></a>
					            <div class="caption">
					                <h5>${abbreviate(product.name, 20)}</h5>
					                <p>
					                    Lorem Ipsum is simply dummy text.
					                </p>
					
					                <h4 style="text-align:center">
					                    <a class="btn" href="${base}${product.path}"></i>&nbsp;Detail&nbsp;</a>  <a class="btn btn-primary " href="#">&nbsp;${currency(product.price, true)}&nbsp;</a></h4>
					            </div>
					        </div>
					    </li>
					    [/#list]
					</ul>
					 [/@product_list]	
                </div>
            </div>
        </div>
    </div>
    <!-- Footer ================================================================== -->
    <div id="footerSection">
        <div class="container">
            <div class="row">
                <div class="span3">
                    <h5>ACCOUNT</h5>
                    <a href="login.html">YOUR ACCOUNT</a>
                    <a href="login.html">PERSONAL INFORMATION</a>
                    <a href="login.html">ADDRESSES</a>
                    <a href="login.html">DISCOUNT</a>
                    <a href="login.html">ORDER HISTORY</a>
                </div>
                <div class="span3">
                    <h5>INFORMATION</h5>
                    <a href="contact.html">CONTACT</a>
                    <a href="register.html">REGISTRATION</a>
                    <a href="legal_notice.html">LEGAL NOTICE</a>
                    <a href="tac.html">TERMS AND CONDITIONS</a>
                    <a href="faq.html">FAQ</a>
                </div>
                <div class="span3">
                    <h5>OUR OFFERS</h5>
                    <a href="#">NEW PRODUCTS</a>
                    <a href="#">TOP SELLERS</a>
                    <a href="special_offer.html">SPECIAL OFFERS</a>
                    <a href="#">MANUFACTURERS</a>
                    <a href="#">SUPPLIERS</a>
                </div>
                <div id="socialMedia" class="span3 pull-right">
                    <h5>SOCIAL MEDIA </h5>
                    <a href="#"><img width="60" height="60" src="${base}/resources/shop/themes/images/facebook.png" title="facebook" alt="facebook" /></a>
                    <a href="#"><img width="60" height="60" src="${base}/resources/shop/themes/images/twitter.png" title="twitter" alt="twitter" /></a>
                    <a href="#"><img width="60" height="60" src="${base}/resources/shop/themes/images/youtube.png" title="youtube" alt="youtube" /></a>
                </div>
            </div>
            <p class="pull-right">&copy; Bootshop</p>
        </div>
    </div>
    [#include "/shop/proshow/bottom.ftl" /]
</body>

</html>