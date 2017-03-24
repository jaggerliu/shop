        <div id="header">
            <!-- Top Bar Start-->
            <nav id="top" class="htop">
                <div class="container">
                    <div class="row"> <span class="drop-icon visible-sm visible-xs"><i class="fa fa-align-justify"></i></span>
                        <div class="pull-left flip left-top">
                            <div class="links">
                                <ul>
                                    <li class="mobile"><i class="fa fa-phone"></i>+91 9898777656</li>
                                    <li class="email"><a href="mailto:info@marketshop.com"><i class="fa fa-envelope"></i>info@marketshop.com</a></li>
                                    <li><a href="#">Wish List (0)</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                </ul>
                            </div>
                        </div>
                        <div id="top-links" class="nav pull-right flip">
                            <ul>
                                <li><a href="login.html">Login</a></li>
                                <li><a href="register.html">Register</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Top Bar End-->
            <!-- Header Start-->
            <header class="header-row">
                <div class="container">
                    <div class="table-container">
                        <!-- Logo Start -->
                        <div class="col-table-cell col-lg-4 col-md-4 col-sm-12 col-xs-12 inner">
                            <div id="logo">
                                <a href="index.html"><img class="img-responsive" src="${base}/resources/static/image/logo.png" title="MarketShop" alt="MarketShop" /></a>
                            </div>
                        </div>
                        <!-- Logo End -->
                        <!-- Search Start-->
                        <div class="col-table-cell col-lg-5 col-md-5 col-md-push-0 col-sm-6 col-sm-push-6 col-xs-12">
                            <div id="search" class="input-group">
                                <input id="filter_name" type="text" name="search" value="" placeholder="Search" class="form-control input-lg" />
                                <button type="button" class="button-search"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                        <!-- Search End-->
                        <!-- Mini Cart Start-->
                        <div class="col-table-cell col-lg-3 col-md-3 col-md-pull-0 col-sm-6 col-sm-pull-6 col-xs-12 inner">
                            <div id="cart">
                                <button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="heading dropdown-toggle"> <span class="cart-icon pull-left flip"></span> <span id="cart-total">2 item(s) - $1,132.00</span></button>
                                <ul class="dropdown-menu">
                                    <li>
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">
                                                        <a href="product.html"><img class="img-thumbnail" title="Xitefun Causal Wear Fancy Shoes" alt="Xitefun Causal Wear Fancy Shoes" src="${base}/resources/static/image/product/sony_vaio_1-50x50.jpg"></a>
                                                    </td>
                                                    <td class="text-left"><a href="product.html">Xitefun Causal Wear Fancy Shoes</a></td>
                                                    <td class="text-right">x 1</td>
                                                    <td class="text-right">$902.00</td>
                                                    <td class="text-center"><button class="btn btn-danger btn-xs remove" title="Remove" onClick="" type="button"><i class="fa fa-times"></i></button></td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">
                                                        <a href="product.html"><img class="img-thumbnail" title="Aspire Ultrabook Laptop" alt="Aspire Ultrabook Laptop" src="${base}/resources/static/image/product/samsung_tab_1-50x50.jpg"></a>
                                                    </td>
                                                    <td class="text-left"><a href="product.html">Aspire Ultrabook Laptop</a></td>
                                                    <td class="text-right">x 1</td>
                                                    <td class="text-right">$230.00</td>
                                                    <td class="text-center"><button class="btn btn-danger btn-xs remove" title="Remove" onClick="" type="button"><i class="fa fa-times"></i></button></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </li>
                                    <li>
                                        <div>
                                            <table class="table table-bordered">
                                                <tbody>
                                                    <tr>
                                                        <td class="text-right"><strong>Sub-Total</strong></td>
                                                        <td class="text-right">$940.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-right"><strong>Eco Tax (-2.00)</strong></td>
                                                        <td class="text-right">$4.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-right"><strong>VAT (20%)</strong></td>
                                                        <td class="text-right">$188.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-right"><strong>Total</strong></td>
                                                        <td class="text-right">$1,132.00</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <p class="checkout"><a href="cart.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> View Cart</a>&nbsp;&nbsp;&nbsp;<a href="checkout.html" class="btn btn-primary"><i class="fa fa-share"></i> Checkout</a></p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- Mini Cart End-->
                    </div>
                </div>
            </header>
            <!-- Header End-->
            <!-- Main Menu Start-->
            <nav id="menu" class="navbar">
                <div class="container">
                    <div class="navbar-header"> <span class="visible-xs visible-sm"> Menu <b></b></span></div>
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav">
                            <li><a class="home_link" title="Home" href="index.html"><span>Home</span></a></li>
                            <li class="dropdown"><a>Shop by Categories</a>
                                <div class="dropdown-menu">
                                    <ul>
									[@product_category_root_list] [#list productCategories as category]
									<li>
									    <a href="${base}/${category.path}">${category.name} [#if category.children?? && (category.children?size > 0)]<span>&rsaquo;</span>[/#if]</a>
									    [#if productCategories?? && (productCategories?size > 0)]
									    <div class="dropdown-menu">
									        <ul>
									            [@product_category_children_list productCategoryId = category.id] 
									            [#list productCategories as productCategory]
									            <li><a href="${base}/${productCategory.path}">${productCategory.name} [#if productCategory.children?? && (productCategory.children?size > 0)]<span>&rsaquo;</span> [/#if]</a>
									              [@product_category_children_list productCategoryId = productCategory.id] 
									              [#if productCategories?? && (productCategories?size > 0)]
									                <div class="dropdown-menu">
									                    <ul>									                       
									                        [#list productCategories as productCategory_t]
									                        <li><a href="${base}/${productCategory_t.path}">${productCategory_t.name}</a></li>
									                        [/#list] 
									                     
									                    </ul>
									                </div>
									                [/#if]
									                [/@product_category_children_list]
									            </li>
									            [/#list] 
									            [/@product_category_children_list]
									         </ul>
									         [/#if]
									    </div>
									</li>
									[/#list] [/@product_category_root_list]
                                    </ul>
                                </div>
                            </li>
                            <li class="menu_brands dropdown"><a href="#">Brands</a>
								<div class="dropdown-menu">
								    [@brand_list] 
								    [#list brands as brand]
								    <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6">
								        <a href="[#if brand.url??]${brand.url}[#else]/zshop/brand/content/${brand.id}.jhtml[/#if]"><img src="[#if brand.type == "image"]${brand.logo}[#else]${base}/resources/static/image/product/apple_logo-60x60.jpg[/#if]" title="${brand.name}" alt="${brand.name}" /></a>
								        <a href="[#if brand.url??]${brand.url}[#else]/zshop/brand/content/${brand.id}.jhtml[/#if]">${brand.name}</a>
								    </div>
								    [/#list] 
								    [/@brand_list]
								</div>
                            </li>
                            <li class="contact-link"><a href="contact-us.html">Contact Us</a></li>
                            <li class="custom-link-right"><a href="#" target="_blank">Special Offers</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Main Menu End-->
        </div>