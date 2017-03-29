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
                <!-- Breadcrumb Start-->
                <ul class="breadcrumb">
                    <li><a href="${base}/"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">Search</a></li>
                </ul>
                <!-- Breadcrumb End-->
                <div class="row">
                    <!--Middle Part Start-->
                    <div id="content" class="col-sm-12">
                        <h1 class="title">Search - ${productKeyword}</h1>
                        <label>Search Criteria</label>
                        <form id="productSearchForm" action="${base}/product/search.jhtml" method="get">
                        <div class="row">                     
                            <div class="col-sm-4">
                                <input type="text" class="form-control" placeholder="Keywords" value="${productKeyword}" name="keyword">
                            </div>
                            <div class="col-sm-3">
                                <input type="submit" class="btn btn-primary" id="button-search" value="Search">
                            </div>                        
                        </div>
                        <br>
                        <div class="product-filter">
                            <div class="row">
                                <div class="col-md-4 col-sm-5">
                                    <div class="btn-group">
                                        <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="List"><i class="fa fa-th-list"></i></button>
                                        <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="Grid"><i class="fa fa-th"></i></button>
                                    </div>
                                    <a href="compare.html" id="compare-total">Product Compare (0)</a> </div>
                                <div class="col-sm-2 text-right">
                                    <label class="control-label" for="input-sort">Sort By:</label>
                                </div>
                                <div class="col-md-3 col-sm-2 text-right">
		                            <select id="input-sort" class="form-control col-sm-3" name="orderType" value="${orderType}">
						                  <option value="">Default</option>
						                  <option value="nameAsc" [#if orderType == "nameAsc"]selected="selected"[/#if]>Name (A - Z)</option>
						                  <option value="nameDesc" [#if orderType == "nameDesc"]selected="selected"[/#if]>Name (Z - A)</option>				                  
						                  <option value="priceAsc" [#if orderType == "priceAsc"]selected="selected"[/#if]>Price (Low &gt; High)</option>
						                  <option value="priceDesc" [#if orderType == "priceDesc"]selected="selected"[/#if]>Price (High &gt; Low)</option>	  
						                  <option value="modelAsc" [#if orderType == "modelAsc"]selected="selected"[/#if]>Model (A - Z)</option>
						                  <option value="modelDesc" [#if orderType == "modelDesc"]selected="selected"[/#if]>Model (Z - A)</option>	
		                			</select>
                                </div>
                                <div class="col-sm-1 text-right">
                                    <label class="control-label" for="input-limit">Show:</label>
                                </div>
                                <div class="col-sm-2 text-right">
		                            <select id="input-limit" class="form-control" name="pageSize" value="${pageSize}">
		                             <option value="10" [#if page.pageSize == 20]selected="selected"[/#if]>10</option>
					                  <option value="20" [#if page.pageSize == 20]selected="selected"[/#if]>20</option>
					                  <option value="25" [#if page.pageSize == 25]selected="selected"[/#if]>25</option>
					                  <option value="50" [#if page.pageSize == 50]selected="selected"[/#if]>50</option>
					                  <option value="75" [#if page.pageSize == 75]selected="selected"[/#if]>75</option>
					                  <option value="100" [#if page.pageSize == 100]selected="selected"[/#if]>100</option>
					                </select>
                                </div>
                            </div>
                        </div>
                        </form>  
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
							                    [/#if]
							                </p>
							            </div>
							        </div>
							    </div>
							</div>
							[/#list] [#else]  <p class="text-center lead">Sorry!<br> no product! </p>[/#if]
                    </div>
                    <!--Middle Part End -->
                    <div class="row">
							[@pagination pageNumber = page.pageNumber totalPages = page.totalPages pattern = "javascript: $.pageSkip({pageNumber});"]
								[#include "/shop/proshow/include/pagination.ftl"]
							[/@pagination]
					</div>
                </div>
            </div>
        </div>  
    [#include "/shop/proshow/include/footer.ftl" /] 
    </div>
    [#include "/shop/proshow/include/bottom.ftl" /]
</body>
<script type="text/javascript">
$().ready(function() {
	var $productSearchForm = $("#productSearchForm");
	var $pageNumber = $("#pageNumber");
	var $inputsort = $("#input-sort");
	var $inputlimit = $("#input-limit");
	$productSearchForm.submit(function() {
	});
	$inputsort.change(function(){
		$productSearchForm.submit();
		return false;
	});
	$inputlimit.change(function(){
		$productSearchForm.submit();
		return false;
	})
	$.pageSkip = function(pageNumber) {
		$pageNumber.val(pageNumber);
		$productSearchForm.submit();
		return false;
	}
});
</script>
</html>