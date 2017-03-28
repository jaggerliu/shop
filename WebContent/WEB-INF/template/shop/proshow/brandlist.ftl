<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${base}/resources/static/image/favicon.png" rel="icon" />
    <title>Shop</title>
    <meta name="description" content="shop"> [#include "/shop/proshow/include/head.ftl" /]
</head>

<body>
    <div class="wrapper-wide">
        [#include "/shop/proshow/include/header.ftl" /]
        <div id="container">
            <div class="container">
                <!-- Breadcrumb Start-->
                <ul class="breadcrumb">
                    <li><a href="${base}/"><i class="fa fa-home"></i></a></li>
                    <li><a>list</a></li>
                </ul>
                <!-- Breadcrumb End-->
                <div class="row">
                    <!--Left Part Start -->
                    <aside id="column-left" class="col-sm-3 hidden-xs">
                        [#include "/shop/proshow/include/product_left.ftl" /]
                        <h3 class="subtitle">Specials</h3>
                        <div class="side-item">
                            [@product_list count = 6 orderBy="monthSales desc" tagIds = 2] [#list products as product]
                            <div class="product-thumb clearfix">
                                <div class="image">
                                    <a href="${base}${product.path}">
                                        <img src="[#if product.thumbnail??]${product.thumbnail}[#else]${setting.defaultThumbnailProductImage}[/#if]" alt="${abbreviate(product.name, 20)}"
                                            title="${abbreviate(product.name, 20)}" class="img-responsive" />
                                    </a>
                                </div>
                                <div class="caption">
                                    <h4><a href="${base}${product.path}">${abbreviate(product.name, 20)}</a></h4>
                                    <p class="price"> <span class="price-new">${currency(product.price, true)}</span> [#if product.marketPrice??
                                        &&product.marketPrice != 0]<span class="price-old">${currency(product.marketPrice, true)}</span>[/#if]
                                        [#if product.marketPrice > product.price]<span class="saving">${((1 - (product.price / product.marketPrice))*100)?int}%</span>                                        [/#if]
                                    </p>
                                </div>
                            </div>
                            [/#list] [/@product_list]
                        </div>
                        [@ad_position id = 12 /]
                    </aside>
                    <!--Left Part End -->
 		            <!--Middle Part Start-->
		            <div id="content" class="col-sm-9"> 
		                <h1 class="title">ALL Brand</h1>
		                <div class="category-list-thumb row">



						</div>
						[#list brandlist as brands]
		                <h4 class="subtitle"> ${brands.code} </h3>
		                <div class="category-list-thumb row">	
		                
							[#list brands.brandd as brand]
			                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
			                        <a href="${base}/brand/content/${brand.id}.jhtml"><img style="width:100px;height:100px;" src="[#if brand.logo??]${brand.logo}[#else]${base}/resources/static/image/no_image.jpg[/#if]" alt="${brand.name}" /></a> 
			                        <a href="${base}/brand/content/${brand.id}.jhtml">${brand.name}</a>
			                      </div>
							[/#list] 
						
		                </div>					
						[/#list] 
		            </div>
		            <!--Middle Part End -->

                </div>
            </div>
        </div>
        [#include "/shop/proshow/include/footer.ftl" /]
    </div>
    [#include "/shop/proshow/include/bottom.ftl" /]
</body>
<script type="text/javascript">
    $().ready(function () {

    });
</script>
</html>