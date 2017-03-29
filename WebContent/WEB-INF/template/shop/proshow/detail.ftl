<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${base}/resources/static/image/favicon.png" rel="icon" />
    <title>Marketshop</title>
    <meta name="description" content="shop">
	[#include "/shop/proshow/include/head.ftl" /]
</head>
<body>
    <div class="wrapper-wide">
   		[#include "/shop/proshow/include/header.ftl" /]
		<div id="container">
		    <div class="container">
		        <!-- Breadcrumb Start-->
		        <ul class="breadcrumb">
		            <li><a href="${base}/"><i class="fa fa-home"></i></a></li>

					[@product_category_parent_list productCategoryId = product.productCategory.id]
						[#list productCategories as productCategory]
							<li>
								<a href="${base}${productCategory.path}">${productCategory.name}</a>
							</li>
						[/#list]
					[/@product_category_parent_list]
					<li><a href="${base}${product.productCategory.path}">${product.productCategory.name}</a></li>
					<li><a href="#">${product.name}</a></li>	            
		        </ul>
		        <!-- Breadcrumb End-->
		        <div class="row">
		            <!--Left Part Start -->
		            <aside id="column-left" class="col-sm-3 hidden-xs">
						[#include "/shop/proshow/include/product_left.ftl" /]
						<h3 class="subtitle">Specials</h3>
						<div class="side-item">
						    [@product_list count = 6 orderBy="monthSales desc" tagIds = 2]
						     [#list products as product]
						    <div class="product-thumb clearfix">
						        <div class="image">
						            <a href="${base}${product.path}">
						                <img src="[#if product.thumbnail??]${product.thumbnail}[#else]${setting.defaultThumbnailProductImage}[/#if]" alt="${abbreviate(product.name, 20)}" title="${abbreviate(product.name, 20)}" class="img-responsive" />
						            </a>
						        </div>
						        <div class="caption">
						            <h4><a href="${base}${product.path}">${abbreviate(product.name, 20)}</a></h4>
						            <p class="price"> <span class="price-new">${currency(product.price, true)}</span>
						            [#if product.marketPrice?? &&product.marketPrice != 0]<span class="price-old">${currency(product.marketPrice, true)}</span>[/#if]
						                <span class="saving">-26%</span>
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
                        <div>
                            <h1 class="title" itemprop="name">${product.name}</h1>
                            <div class="row product-info">
                                <div class="col-sm-6">
                                    <div class="image">
                                    [#if product.productImages?has_content]
                                    	<img class="img-responsive" itemprop="image" style:"width:350px;height:350px" id="zoom_01" src="${product.productImages[0].medium}" title="${product.name}" alt="${product.name}" data-zoom-image="${product.productImages[0].large}"/> 
                                    [#else]
                                    	<img class="img-responsive" src="${setting.defaultMediumProductImage}" />
                                    [/#if]
                                    </div>
                                    <div class="center-block text-center"><span class="zoom-gallery"><i class="fa fa-search"></i> Click image for Gallery</span></div>
                                    <div class="image-additional" id="gallery_01">
                                    [#if product.productImages?has_content]
                                    	[#list product.productImages as productImage]
                                        	<a class="thumbnail" href="#" data-zoom-image="${productImage.large}" data-image="${productImage.medium}" title="${product.name}"> <img style:"width:66px;height:66px" src="${productImage.thumbnail}" title="${product.name}" alt="${product.name}" /></a>
                                    	[#if productImage_index ==4 ]
                                    	[#break]
                                    	[/#if]
                                    	[/#list]
                                    [#else]
                                    	<a class="thumbnail" href="javascript:;"><img src="${setting.defaultThumbnailProductImage}" /></a>
                                    [/#if] 	
                                     </div>
                                </div>
                                <div class="col-sm-6">
                                    <ul class="list-unstyled description">
                                   		 [#if product.brand??]
                                        <li>
                                       		 <b>Brand:</b> <a href="[#if product.brand.url??]${product.brand.url}[#else]${base}/zshop/brand/content/${product.brand.id}.jhtml[/#if]"><span itemprop="brand">${product.brand.name}</span></a>
                                        </li>
                                        [/#if]
                                        <li><b>Product Code:</b> <span itemprop="mpn">${product.sn}</span></li>
                                        <li><b>Product Model:</b> <span itemprop="mpn">${product.model}</span></li>
                                        <li><b>Product weight:</b> ${product.weight}</li>
                                        <li><b>Availability:</b> [#if product.stock == 0 ]<span class="nostock">No Stock</span>[#else]<span class="instock">In Stock</span>[/#if]</li>
                                    </ul>
                                    <ul class="price-box">
                                        <li class="price" itemprop="offers">
										[#if setting.isShowMarketPrice]
                                        <span class="price-old">
                                        	${currency(product.marketPrice, true)}
                                        </span>
                                        [/#if]
                                         <span itemprop="price">${currency(product.price, true)}<span itemprop="availability" content="In Stock"></span></span>
                                        </li>
                                        <li></li>
                                    </ul>
                                    <div id="product">
										[#if product.specifications?has_content]
										<h3 class="subtitle">Available Options</h3>
										<div class="form-group required" style="border: 0">
										    [#assign specificationValues = product.goods.specificationValues /] [#list product.specifications as specification]
										    <label class="control-label">${specification.name}</label>
										    <select class="form-control">
										        [#list specification.specificationValues as specificationValue]
										        [#if specificationValues?seq_contains(specificationValue)]
										         <option value="${specificationValue.id}">${specificationValue.name}</option>
										         [/#if]
												[/#list]
										    </select> [/#list]
										</div>
										[/#if]
                                    </div>
                                    <hr>
                                    <!-- AddThis Button BEGIN 
                                    <div class="addthis_toolbox addthis_default_style">
                                        <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                        <a class="addthis_button_tweet"></a>
                                        <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                                        <a class="addthis_button_pinterest_pinit" pi:pinit:layout="horizontal" pi:pinit:url="http://www.addthis.com/features/pinterest" pi:pinit:media="http://www.addthis.com/cms-content/images/features/pinterest-lg.png"></a>
                                        <a class="addthis_counter addthis_pill_style"></a>
                                    </div>
                                    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-514863386b357649"></script>
                                    AddThis Button END -->
                                </div>
                            </div>
                            <ul class="nav nav-tabs">
                            [#if product.introduction?has_content]
                                <li class="active"><a href="#tab-description" data-toggle="tab">Description</a></li>
                            [/#if]   
                            [#if product.specifications?has_content]
                                <li><a href="#tab-specification" data-toggle="tab">Specification</a></li>
                            [/#if]
                            [#if product.parameterValue?has_content]
                                <li><a href="#tab-parameterValue" data-toggle="tab">ParameterValue</a></li>
                           	[/#if]               
                            </ul>
                            <div class="tab-content">
                            	[#if product.introduction?has_content]
                                <div itemprop="description" id="tab-description" class="tab-pane active">
                                    <div>
                                    ${product.introduction}
									</div>
                                </div>
                                [/#if] 
                                 [#if product.specifications?has_content]
                                <div id="tab-specification" class="tab-pane">
                                    <div id="tab-specification" class="tab-pane">
                                    	[#assign specificationValues = product.goods.specificationValues /]
                                    	
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                <td><strong>sn</strong></td>
                                                <td><strong>name</strong></td>
                                                <td><strong>model</strong></td>        
                                                [#list product.specifications as specification]
                                                    <td><strong>${specification.name}</strong></td>    
                                                 [/#list]                                                      
                                                </tr>
                                                [#list product.siblings as product]
                                                <tr>
                                                   <td><a href="${base}/${product.path}">${product.sn}</a></td>
                                                   <td><a href="${base}/${product.path}">${product.name}[#list product.specificationValues as specificationValue][${specificationValue.name}]&nbsp;[/#list]</a></td>  
                                                   <td>${product.model}</td>  
                                                	[#list product.specificationValues as specificationValues]
                                                    	<td>${specificationValues.name}</td>    
                                                 	[/#list]    
                                                 </tr>
                                                [/#list]
                                            </thead>
                                        </table>     
                                    </div>
                                </div>
                                [/#if]
								[#if (product.parameterValue.size() >= 3)]
	                                <div itemprop="parameterValue" id="tab-parameterValue" class="tab-pane">
	                                    <div>
										<table class="table table-bordered">
											[#list product.parameterValue.keySet() as parameter]
												<tr>
													<th>${abbreviate(parameter.name, 20)}</th>
													<td>
														<span title="${product.parameterValue.get(parameter)}">${abbreviate(product.parameterValue.get(parameter), 30, "...")}</span>
													</td>
												<tr>
											[/#list]
										</table>
										</div>
	                                </div>
	                            </div>
	                            [/#if]                                 
                            </div>                                                   
                            <h3 class="subtitle">Related Products</h3>
                            <div class="owl-carousel related_pro">
                            [@product_list productCategoryId = product.productCategory.id count = 8 orderBy="monthSales desc"]
							[#list products as product]
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="${base}${product.path}"><img src="${base}/resources/static/image/product/samsung_tab_1-200x200.jpg" alt="${abbreviate(product.name, 30)}" title="${abbreviate(product.name, 30)}" class="img-responsive" /></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="${base}${product.path}">${abbreviate(product.name, 30)}</a></h4>
                                        <p class="price"> 
                                       		<span class="price-new">${currency(product.price, true, true)}</span> 
											[#if setting.isShowMarketPrice]                                       	
											<span class="price-old">${currency(product.marketPrice, true)}</span> <span class="saving">-5%</span> 
	                                        [/#if]
                                        </p>
                                    </div>
                                </div>
							[/#list]
							[/@product_list] 
                            </div>
                        </div>
                    </div>
                    <!--Middle Part End -->
		        </div>
		    </div>
		    </form>
		</div>
    [#include "/shop/proshow/include/footer.ftl" /] 
    </div>
    [#include "/shop/proshow/include/bottom.ftl" /]

    <script type="text/javascript" src="${base}/resources/static/js/jquery.elevateZoom-3.0.8.min.js"></script>
    <script type="text/javascript" src="${base}/resources/static/js/swipebox/lib/ios-orientationchange-fix.js"></script>
    <script type="text/javascript" src="${base}/resources/static/js/swipebox/src/js/jquery.swipebox.min.js"></script>
    <script type="text/javascript">
        // Elevate Zoom for Product Page image
        $("#zoom_01").elevateZoom({
            gallery: 'gallery_01',
            cursor: 'pointer',
            galleryActiveClass: 'active',
            imageCrossfade: true,
            zoomWindowFadeIn: 500,
            zoomWindowFadeOut: 500,
            lensFadeIn: 500,
            lensFadeOut: 500,
            loadingIcon: 'image/progress.gif'
        });
        //////pass the images to swipebox
        $("#zoom_01").bind("click", function(e) {
            var ez = $('#zoom_01').data('elevateZoom');
            $.swipebox(ez.getGalleryList());
            return false;
        });
    </script>
    <!-- JS Part End-->
</body>
</html>