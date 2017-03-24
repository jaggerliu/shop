<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${base}/resources/static/${base}/resources/static/${base}/resources/static/image/favicon.png" rel="icon" />
    <title>Marketshop - eCommerce HTML Template</title>
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
		            <li><a href="index.html"><i class="fa fa-home"></i></a></li>

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
                                    	<img class="img-responsive" itemprop="image" id="zoom_01" src="${product.productImages[0].medium}" style="width: 350px;height:350px" title="${product.name}" alt="${product.name}" data-zoom-image="${product.productImages[0].medium}"/> 
                                    </div>
                                    <div class="center-block text-center"><span class="zoom-gallery"><i class="fa fa-search"></i> Click image for Gallery</span></div>
                                    <div class="image-additional" id="gallery_01">
                                        <a class="thumbnail" href="#" data-zoom-image="${base}/resources/static/image/product/macbook_air_1-500x500.jpg" data-image="${base}/resources/static/image/product/macbook_air_1-350x350.jpg" title="Laptop Silver black"> <img src="${base}/resources/static/image/product/macbook_air_1-66x66.jpg" title="Laptop Silver black" alt="Laptop Silver black" /></a>
                                        <a class="thumbnail" href="#" data-zoom-image="${base}/resources/static/image/product/macbook_air_4-500x500.jpg" data-image="${base}/resources/static/image/product/macbook_air_4-350x350.jpg" title="Laptop Silver black"><img src="${base}/resources/static/image/product/macbook_air_4-66x66.jpg" title="Laptop Silver black" alt="Laptop Silver black" /></a>
                                        <a class="thumbnail" href="#" data-zoom-image="${base}/resources/static/image/product/macbook_air_2-500x500.jpg" data-image="${base}/resources/static/image/product/macbook_air_2-350x350.jpg" title="Laptop Silver black"><img src="${base}/resources/static/image/product/macbook_air_2-66x66.jpg" title="Laptop Silver black" alt="Laptop Silver black" /></a>
                                        <a class="thumbnail" href="#" data-zoom-image="${base}/resources/static/image/product/macbook_air_3-500x500.jpg" data-image="${base}/resources/static/image/product/macbook_air_3-350x350.jpg" title="Laptop Silver black"><img src="${base}/resources/static/image/product/macbook_air_3-66x66.jpg" title="Laptop Silver black" alt="Laptop Silver black" /></a>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <ul class="list-unstyled description">
                                        <li><b>Brand:</b> <a href="#"><span itemprop="brand">Apple</span></a></li>
                                        <li><b>Product Code:</b> <span itemprop="mpn">Product 17</span></li>
                                        <li><b>Reward Points:</b> 700</li>
                                        <li><b>Availability:</b> <span class="instock">In Stock</span></li>
                                    </ul>
                                    <ul class="price-box">
                                        <li class="price" itemprop="offers"><span class="price-old">$1,202.00</span> <span itemprop="price">$1,142.00<span itemprop="availability" content="In Stock"></span></span>
                                        </li>
                                        <li></li>
                                    </ul>
                                    <div id="product">
                                        <h3 class="subtitle">Available Options</h3>
                                        <div class="form-group required">
                                            <label class="control-label">Color</label>
                                            <select class="form-control" id="input-option200" name="option[200]">
						                      <option value=""> --- Please Select --- </option>
						                      <option value="4">Black </option>
						                      <option value="3">Silver </option>
						                      <option value="1">Green </option>
						                      <option value="2">Blue </option>
						                    </select>
                                        </div>
                                        <div class="cart">
                                            <div>
                                                <div class="qty">
                                                    <label class="control-label" for="input-quantity">Qty</label>
                                                    <input type="text" name="quantity" value="1" size="2" id="input-quantity" class="form-control" />
                                                    <a class="qtyBtn plus" href="javascript:void(0);">+</a><br />
                                                    <a class="qtyBtn mines" href="javascript:void(0);">-</a>
                                                    <div class="clear"></div>
                                                </div>
                                                <button type="button" id="button-cart" class="btn btn-primary btn-lg">Add to Cart</button>
                                            </div>
                                            <div>
                                                <button type="button" class="wishlist" onClick=""><i class="fa fa-heart"></i> Add to Wish List</button>
                                                <br />
                                                <button type="button" class="wishlist" onClick=""><i class="fa fa-exchange"></i> Compare this Product</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="rating" itemprop="aggregateRating">
                                        <meta itemprop="ratingValue" content="0" />
                                        <p><span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span> <a onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;" href=""><span itemprop="reviewCount">1 reviews</span></a> /
                                            <a onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;" href="">Write a review</a></p>
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
                                <li class="active"><a href="#tab-description" data-toggle="tab">Description</a></li>
                                <li><a href="#tab-specification" data-toggle="tab">Specification</a></li>
                                <li><a href="#tab-review" data-toggle="tab">Reviews (2)</a></li>
                            </ul>
                            <div class="tab-content">
                                <div itemprop="description" id="tab-description" class="tab-pane active">
                                    <div>
                                        <p><b>Intel Core 2 Duo processor</b></p>
                                        <p>Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.</p>
                                        <p><b>1GB memory, larger hard drives</b></p>
                                        <p>The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.</p>
                                        <p><b>Sleek, 1.08-inch-thin design</b></p>
                                        <p>MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the
                                            cord.
                                        </p>
                                        <p><b>Built-in iSight camera</b></p>
                                        <p>Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth</p>
                                    </div>
                                </div>
                                <div id="tab-specification" class="tab-pane">
                                    <div id="tab-specification" class="tab-pane">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <td colspan="2"><strong>Memory</strong></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>test 1</td>
                                                    <td>8gb</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <td colspan="2"><strong>Processor</strong></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>No. of Cores</td>
                                                    <td>1</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div id="tab-review" class="tab-pane">
                                    <form class="form-horizontal">
                                        <div id="review">
                                            <div>
                                                <table class="table table-striped table-bordered">
                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 50%;"><strong><span>harvey</span></strong></td>
                                                            <td class="text-right"><span>20/01/2016</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
                                                                    of type and scrambled it to make a type specimen book.</p>
                                                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <table class="table table-striped table-bordered">
                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 50%;"><strong><span>Andrson</span></strong></td>
                                                            <td class="text-right"><span>20/01/2016</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley
                                                                    of type and scrambled it to make a type specimen book.</p>
                                                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="text-right"></div>
                                        </div>
                                        <h2>Write a review</h2>
                                        <div class="form-group required">
                                            <div class="col-sm-12">
                                                <label for="input-name" class="control-label">Your Name</label>
                                                <input type="text" class="form-control" id="input-name" value="" name="name">
                                            </div>
                                        </div>
                                        <div class="form-group required">
                                            <div class="col-sm-12">
                                                <label for="input-review" class="control-label">Your Review</label>
                                                <textarea class="form-control" id="input-review" rows="5" name="text"></textarea>
                                                <div class="help-block"><span class="text-danger">Note:</span> HTML is not translated!</div>
                                            </div>
                                        </div>
                                        <div class="form-group required">
                                            <div class="col-sm-12">
                                                <label class="control-label">Rating</label> &nbsp;&nbsp;&nbsp; Bad&nbsp;
                                                <input type="radio" value="1" name="rating"> &nbsp;
                                                <input type="radio" value="2" name="rating"> &nbsp;
                                                <input type="radio" value="3" name="rating"> &nbsp;
                                                <input type="radio" value="4" name="rating"> &nbsp;
                                                <input type="radio" value="5" name="rating"> &nbsp;Good
                                            </div>
                                        </div>
                                        <div class="buttons">
                                            <div class="pull-right">
                                                <button class="btn btn-primary" id="button-review" type="button">Continue</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <h3 class="subtitle">Related Products</h3>
                            <div class="owl-carousel related_pro">
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="product.html"><img src="${base}/resources/static/image/product/samsung_tab_1-200x200.jpg" alt="Aspire Ultrabook Laptop" title="Aspire Ultrabook Laptop" class="img-responsive" /></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Aspire Ultrabook Laptop</a></h4>
                                        <p class="price"> <span class="price-new">$230.00</span> <span class="price-old">$241.99</span> <span class="saving">-5%</span> </p>
                                        <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                    </div>
                                    <div class="button-group">
                                        <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                        <div class="add-to-links">
                                            <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                            <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="product.html"><img src="${base}/resources/static/image/product/macbook_pro_1-200x200.jpg" alt=" Strategies for Acquiring Your Own Laptop " title=" Strategies for Acquiring Your Own Laptop " class="img-responsive" /></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html"> Strategies for Acquiring Your Own Laptop </a></h4>
                                        <p class="price"> <span class="price-new">$1,400.00</span> <span class="price-old">$1,900.00</span> <span class="saving">-26%</span> </p>
                                    </div>
                                    <div class="button-group">
                                        <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                        <div class="add-to-links">
                                            <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                            <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="product.html"><img src="${base}/resources/static/image/product/macbook_1-200x200.jpg" alt="Ideapad Yoga 13-59341124 Laptop" title="Ideapad Yoga 13-59341124 Laptop" class="img-responsive" /></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Ideapad Yoga 13-59341124 Laptop</a></h4>
                                        <p class="price"> $2.00 </p>
                                        <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                    </div>
                                    <div class="button-group">
                                        <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                        <div class="add-to-links">
                                            <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                            <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="product.html"><img src="${base}/resources/static/image/product/ipod_shuffle_1-200x200.jpg" alt="Hp Pavilion G6 2314ax Notebok Laptop" title="Hp Pavilion G6 2314ax Notebok Laptop" class="img-responsive" /></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Hp Pavilion G6 2314ax Notebok Laptop</a></h4>
                                        <p class="price"> $122.00 </p>
                                    </div>
                                    <div class="button-group">
                                        <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                        <div class="add-to-links">
                                            <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                            <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="product.html"><img src="${base}/resources/static/image/product/ipod_touch_1-200x200.jpg" alt="Samsung Galaxy S4" title="Samsung Galaxy S4" class="img-responsive" /></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Samsung Galaxy S4</a></h4>
                                        <p class="price"> <span class="price-new">$62.00</span> <span class="price-old">$122.00</span> <span class="saving">-50%</span> </p>
                                    </div>
                                    <div class="button-group">
                                        <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                        <div class="add-to-links">
                                            <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                            <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-thumb">
                                    <div class="image">
                                        <a href="product.html"><img src="${base}/resources/static/image/product/ipod_shuffle_1-200x200.jpg" alt="Hp Pavilion G6 2314ax Notebok Laptop" title="Hp Pavilion G6 2314ax Notebok Laptop" class="img-responsive" /></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="product.html">Hp Pavilion G6 2314ax Notebok Laptop</a></h4>
                                        <p class="price"> $122.00 </p>
                                    </div>
                                    <div class="button-group">
                                        <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                        <div class="add-to-links">
                                            <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                            <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                        </div>
                                    </div>
                                </div>
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