<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${base}/resources/static/${base}/resources/static/image/favicon.png" rel="icon" />
    <title>Shop</title>
    <meta name="description" content="shop">
	[#include "/shop/proshow/include/head.ftl" /]
</head>
<body>
    <div class="wrapper-wide">
   		[#include "/shop/proshow/include/header.ftl" /]
		<div id="container">
			<form id="productForm" action="${base}${(productCategory.path)!"/product/list.jhtml"}" method="get">
				<input type="hidden" id="pageNumber" name="pageNumber" value="${page.pageNumber}" />
		    <div class="container">
		        <!-- Breadcrumb Start-->
		        <ul class="breadcrumb">
		            <li><a href="${base}/"><i class="fa fa-home"></i></a></li>
					[#if productCategory??]
						[@product_category_parent_list productCategoryId = productCategory.id]
							[#list productCategories as productCategory]
								<li>
									<a href="${base}${productCategory.path}">${productCategory.name}</a>
								</li>
							[/#list]
						[/@product_category_parent_list]
						 <li><a href="${base}${productCategory.path}">${productCategory.name}</a></li>
					[#else]
						<li><a href="category.html">${message("shop.product.title")}</a></li>
					[/#if]		            
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
							        [#if product.marketPrice > product.price]<span class="saving">${((1 - (product.price / product.marketPrice))*100)?int}%</span>
							        [/#if]
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
		                <h1 class="title">${productCategory.name}</h1>
		                <h3 class="subtitle">Brand<a class="usermore" href="${base}/brand/list.jhtml">more</a></h3>
		                <div class="category-list-thumb row">
		                [@brand_list] 
						[#list brands as brand]
		                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
		                        <a href="${base}/brand/content/${brand.id}.jhtml"><img style="width:100px;height:100px;" src="[#if brand.logo??]${brand.logo}[#else]${base}/resources/static/image/no_image.jpg[/#if]" alt="${brand.name}" /></a> 
		                        <a href="${base}/brand/content/${brand.id}.jhtml">${brand.name}</a>
		                      </div>
		  					[#if brand_index == 5]
							[#break]
							[/#if]               
						[/#list] 
						[/@brand_list]
						</div>
		                <div class="product-filter">
		                    <div class="row">
		                        <div class="col-md-2 col-sm-5">
		                            <div class="btn-group">
		                                <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="List"><i class="fa fa-th-list"></i></button>
		                                <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="Grid"><i class="fa fa-th"></i></button>
		                            </div>
		                        </div>
                                <div class="col-sm-1 text-right">
                                    <label class="control-label" for="input-sort">Category:</label>
                                </div>    
                                [#if productCategory.children?? && (productCategory.children?size > 0)]
                                <div class="col-md-3 col-sm-2 text-right">
                                    <select id="input-category" class="form-control col-sm-3" name="productCategoryId" value="">
						                  <option value="">Default</option>
						                  [#list productCategory.children as catagory]
						                   <option value="${catagory.id}">${catagory.name}</option>
						                  [/#list]
		                			</select>
                                </div> 	
                                [/#if]	                        
		                        <div class="col-sm-1 text-right">
		                            <label class="control-label" for="input-sort">SortBy:</label>
		                        </div>
		                        <div class="col-md-2 col-sm-2 text-right">
		                            <select id="input-sort" class="form-control col-sm-3" name="orderType" value="${orderType}">
						                  <option value="">Default</option>
						                  <option value="priceAsc" [#if orderType == "priceAsc"]selected="selected"[/#if]>Price (Low &gt; High)</option>
						                  <option value="priceDesc" [#if orderType == "priceDesc"]selected="selected"[/#if]>Price (High &gt; Low)</option>
		                			</select>
		                        </div>
		                        <div class="col-sm-1 text-right">
		                            <label class="control-label" for="input-limit">Show:</label>
		                        </div>
		                        <div class="col-sm-2 text-right">
		                            <select id="input-limit" class="form-control" name="pageSize" value="${pageSize}">
					                  <option value="20" [#if page.pageSize == 20]selected="selected"[/#if]>20</option>
					                  <option value="25" [#if page.pageSize == 25]selected="selected"[/#if]>25</option>
					                  <option value="50" [#if page.pageSize == 50]selected="selected"[/#if]>50</option>
					                  <option value="75" [#if page.pageSize == 75]selected="selected"[/#if]>75</option>
					                  <option value="100" [#if page.pageSize == 100]selected="selected"[/#if]>100</option>
					                </select>
		                        </div>
		                    </div>
		                </div>
		                <br />
		                <div class="row products-category">
		                    [#if page.content?has_content] [#list page.content as product]
							<div class="product-layout product-list col-xs-12">
							    <div class="product-thumb">
							        <div class="image">
							            <a href="${base}${product.path}"><img src="[#if product.thumbnail??]${product.thumbnail}[#else]${setting.defaultThumbnailProductImage}[/#if]"
							                    alt="${abbreviate(product.name, 60)}" title="${abbreviate(product.name, 60)}" class="img-responsive" /></a>
							        </div>
							        <div>
							            <div class="caption">
							                <h4><a href="${base}${product.path}">${abbreviate(product.name, 60)}</a></h4>
							                <p class="description">${abbreviate(product.name, 60)}</p>
							                <p class="price">
							                    <span class="price-new">${currency(product.price, true)}</span> [#if product.marketPrice??]
							                    <span class="price-old">${currency(product.marketPrice, true)}</span> 
										        [#if product.marketPrice > product.price]<span class="saving">${((1 - (product.price / product.marketPrice))*100)?int}%</span>
										        [/#if]
							                    [/#if]</p>
							            </div>
							        </div>
							    </div>
							</div>
							[/#list] [#else] <p class="text-center lead">Sorry!<br> no product! </p> [/#if]
		                </div>
		                <div class="row">
							[@pagination pageNumber = page.pageNumber totalPages = page.totalPages pattern = "javascript: $.pageSkip({pageNumber});"]
								[#include "/shop/proshow/include/pagination.ftl"]
							[/@pagination]
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
</body>
<script>
$().ready(function() {
	var $productForm = $("#productForm");
	var $pageNumber = $("#pageNumber");
	var $inputsort = $("#input-sort");
	var $inputlimit = $("#input-limit");
	var $inputcategory = $("#input-category");
	$productForm.submit(function() {
	});
	$inputcategory.change(function(){
		window.location.href="${base}/product/list/"+$(this).val()+".jhtml";
		return false;
	});
	$inputsort.change(function(){
		$productForm.submit();
		return false;
	});
	$inputlimit.change(function(){
		$productForm.submit();
		return false;
	})
	$.pageSkip = function(pageNumber) {
		$pageNumber.val(pageNumber);
		$productForm.submit();
		return false;
	}
});
</script>
</html>