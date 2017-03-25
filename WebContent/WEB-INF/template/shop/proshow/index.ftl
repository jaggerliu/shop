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
                <div class="row">
                    <!--顶部滑动广告-->
                    <div id="content" class="col-xs-12">
                        <div class="row">
                            <div class="col-sm-8">
 								[@ad_position id = 3 /]
                            </div>
                            <div class="col-sm-4 pull-right flip">
								[@ad_position id = 10 /]
                            </div>
                        </div>
                        <!--热卖商品-->
                        <h3 class="subtitle">Laster</h3>
                        <div class="owl-carousel product_carousel">
							[@product_list count = 8 orderBy="monthSales desc" tagIds = 2] 
							[#list products as product]
						                <div class="product-thumb">
						                    <div class="image">
						                        <a href="${base}${product.path}"><img src="[#if product.thumbnail??]${product.thumbnail}[#else]${setting.defaultThumbnailProductImage}[/#if]" alt="${abbreviate(product.name, 20)}"
						                                title="${abbreviate(product.name, 20)}" class="img-responsive" /></a>
						                    </div>
						                    <div class="caption">
						                        <h4><a href="${base}${product.path}">${abbreviate(product.name, 20)}</a></h4>
						                       	<p class="price">
							                    <span class="price-new">${currency(product.price, true)}</span> [#if product.marketPrice??]
							                    <span class="price-old">${currency(product.marketPrice, true)}</span> 
							                     [#if product.marketPrice > product.price]<span class="saving">${((1 - (product.price / product.marketPrice))*100)?int}%</span>
							                     [/#if]
							                    [/#if]
							                </p>
						                    </div>
						                </div>
							[/#list] 
							[/@product_list]
                        </div>
                        <!-- 热卖商品 End-->
                         <!--热卖商品-->
                        <h3 class="subtitle">Featured Products</h3>
                        <div class="owl-carousel product_carousel">
							[@product_list count = 8 orderBy="monthSales desc" tagIds = 5] 
							[#list products as product]
						                <div class="product-thumb">
						                    <div class="image">
						                        <a href="${base}${product.path}"><img src="[#if product.thumbnail??]${product.thumbnail}[#else]${setting.defaultThumbnailProductImage}[/#if]" alt="${abbreviate(product.name, 20)}"
						                                title="${abbreviate(product.name, 20)}" class="img-responsive" /></a>
						                    </div>
						                    <div class="caption">
						                        <h4><a href="${base}${product.path}">${abbreviate(product.name, 20)}</a></h4>
						                       	<p class="price">
							                    <span class="price-new">${currency(product.price, true)}</span> [#if product.marketPrice??]
							                    <span class="price-old">${currency(product.marketPrice, true)}</span> 
							                     [#if product.marketPrice > product.price]<span class="saving">${((1 - (product.price / product.marketPrice))*100)?int}%</span>
							                     [/#if]
							                    [/#if]
							                   </div>
						                </div>
							[/#list] 
							[/@product_list]
                        </div>
                        <!-- 热卖商品 End-->                          
                        <!-- 首页中部广告位 Start-->
                        <div class="marketshop-banner">
							[@ad_position id = 11 /]
                        </div>
                        <!-- Banner End-->                    
                        <!-- Categories Product Slider Start-->
						[@product_category_root_list] [#list productCategories as category]
						<div class="category-module" id="latest_category">
						    <h3 class="subtitle">${category.name} - <a class="viewall" href="${base}${category.path}">view all</a></h3>
						    <div class="category-module-content">
						        <ul id="sub-cat" class="tabs">
						            [@product_category_children_list productCategoryId = category.id count = 5] 
						            [#list productCategories as productCategory]
						            <li><a href="#id_${productCategory.id}">${productCategory.name}</a></li>
						            [/#list] 
						            [/@product_category_children_list]
						        </ul>
						        [@product_category_children_list productCategoryId = category.id count = 5] 
						        [#list productCategories as productCategory]
						
						        <div id="id_${productCategory.id}" class="tab_content">
						            <div class="owl-carousel latest_category_tabs">
						                [@product_list productCategoryId = productCategory.id orderBy="monthSales desc"] 
										[#list products as product]
						                <div class="product-thumb">
						                    <div class="image">
						                        <a href="${base}${product.path}"><img src="[#if product.thumbnail??]${product.thumbnail}[#else]${setting.defaultThumbnailProductImage}[/#if]" alt="${abbreviate(product.name, 20)}"
						                                title="${abbreviate(product.name, 20)}" class="img-responsive" /></a>
						                    </div>
						                    <div class="caption">
						                        <h4><a href="${base}${product.path}">${abbreviate(product.name, 20)}</a></h4>
						                       	<p class="price">
							                    <span class="price-new">${currency(product.price, true)}</span> [#if product.marketPrice??]
							                    <span class="price-old">${currency(product.marketPrice, true)}</span> 
							                     [#if product.marketPrice > product.price]<span class="saving">${((1 - (product.price / product.marketPrice))*100)?int}%</span>
							                     [/#if]
							                    [/#if]											
											</div>
						                </div>
						                [/#list] 
										[/@product_list]
						            </div>
						        </div>
						        [/#list] 
						        [/@product_category_children_list]
						    </div>
						</div>
						[#if category_index == 0] [#break /] [/#if]
						[/#list] [/@product_category_root_list]
                        <!-- Categories Product Slider End -->                        
                        <!-- Banner Start -->
                        <div class="marketshop-banner">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <a href="#"><img title="1 Block Banner" alt="1 Block Banner" src="${base}/resources/static/image/banner/1blockbanner-1140x75.jpg"></a>
                                </div>
                            </div>
                        </div>
                        <!-- Banner End -->
                        <!-- Brand Logo Carousel Start-->
                        <div id="carousel" class="owl-carousel nxt">
                            <div class="item text-center">
                                <a href="#"><img src="${base}/resources/static/image/product/apple_logo-100x100.jpg" alt="Palm" class="img-responsive" /></a>
                            </div>
                            <div class="item text-center">
                                <a href="#"><img src="${base}/resources/static/image/product/canon_logo-100x100.jpg" alt="Sony" class="img-responsive" /></a>
                            </div>
                            <div class="item text-center">
                                <a href="#"><img src="${base}/resources/static/image/product/apple_logo-100x100.jpg" alt="Canon" class="img-responsive" /></a>
                            </div>
                            <div class="item text-center">
                                <a href="#"><img src="${base}/resources/static/image/product/canon_logo-100x100.jpg" alt="Apple" class="img-responsive" /></a>
                            </div>
                            <div class="item text-center">
                                <a href="#"><img src="${base}/resources/static/image/product/apple_logo-100x100.jpg" alt="HTC" class="img-responsive" /></a>
                            </div>
                            <div class="item text-center">
                                <a href="#"><img src="${base}/resources/static/image/product/canon_logo-100x100.jpg" alt="Hewlett-Packard" class="img-responsive" /></a>
                            </div>
                            <div class="item text-center">
                                <a href="#"><img src="${base}/resources/static/image/product/apple_logo-100x100.jpg" alt="brand" class="img-responsive" /></a>
                            </div>
                            <div class="item text-center">
                                <a href="#"><img src="${base}/resources/static/image/product/canon_logo-100x100.jpg" alt="brand1" class="img-responsive" /></a>
                            </div>
                        </div>
                        <!-- Brand Logo Carousel End -->
                    </div>
                    <!--Middle Part End-->
                </div>
            </div>
        </div>
    [#include "/shop/proshow/include/footer.ftl" /] 
    </div>
    [#include "/shop/proshow/include/bottom.ftl" /]
</body>

</html>