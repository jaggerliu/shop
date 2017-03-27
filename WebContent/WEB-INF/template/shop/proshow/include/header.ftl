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

                                </ul>
                            </div>
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
                                <a href="${base}/"><img class="img-responsive" src="${base}/resources/static/image/logo.png" title="MarketShop" alt="MarketShop" /></a>
                            </div>
                        </div>
                        <!-- Logo End -->
                        <!-- Search Start-->
                        <div class="col-table-cell col-lg-5 col-md-5 col-md-push-0 col-sm-6 col-sm-push-6 col-xs-12">
                            <div id="search" class="input-group">
                            <form id="productSearchForm" action="${base}/product/search.jhtml" method="get">
                                <input id="filter_name" type="text" name="keyword" value="${productKeyword!"search"}" placeholder="Search" class="form-control input-lg" />
                                <button type="submit" class="button-search"><i class="fa fa-search"></i></button>
                            </form>           
                            </div>                       
                        </div>
                        <!-- Search End-->
                        <!-- Mini Cart Start-->
                        <div class="col-table-cell col-lg-3 col-md-3 col-md-pull-0 col-sm-6 col-sm-pull-6 col-xs-12 inner">

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
                            <li><a class="home_link" title="Home" href="${base}"><span>Home</span></a></li>
                            <li class="dropdown"><a>Shop by Categories</a>
                                <div class="dropdown-menu">
                                    <ul>
									[@product_category_root_list] [#list productCategories as category]
									<li>
									    <a href="${base}${category.path}">${category.name} [#if category.children?? && (category.children?size > 0)]<span>&rsaquo;</span>[/#if]</a>
									    [#if productCategories?? && (productCategories?size > 0)]
									    <div class="dropdown-menu">
									        <ul>
									            [@product_category_children_list productCategoryId = category.id] 
									            [#list productCategories as productCategory]
									            <li><a href="${base}${productCategory.path}">${productCategory.name} [#if productCategory.children?? && (productCategory.children?size > 0)]<span>&rsaquo;</span> [/#if]</a>
									              [@product_category_children_list productCategoryId = productCategory.id] 
									              [#if productCategories?? && (productCategories?size > 0)]
									                <div class="dropdown-menu">
									                    <ul>									                       
									                        [#list productCategories as productCategory_t]
									                        <li><a href="${base}${productCategory_t.path}">${productCategory_t.name}</a></li>
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
                            <li class="menu_brands dropdown"><a href="#">UseFor</a>
								<div class="dropdown-menu">
								    [@productUse_list] 
								    [#list productUses as productUse]
								    <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6">
								        <a href="${base}/productUse/content/${productUse.id}.jhtml"><img style="width:60px;height:60px;" src="[#if productUse.logo??]${productUse.logo}[#else]${base}/resources/static/image/product/apple_logo-60x60.jpg[/#if]" title="${productUse.name}" alt="${productUse.name}" /></a>
								        <a href="${base}/productUse/content/${productUse.id}.jhtml">${productUse.name}</a>
								    </div>
								    [/#list] 
								    [/@productUse_list]
								</div>
                            </li>                            
                            <!--<li class="menu_brands dropdown"><a href="#">Brands</a>
								<div class="dropdown-menu">
								    [@brand_list] 
								    [#list brands as brand]
								    <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6">
								        <a href="[#if brand.url??]${brand.url}[#else]${base}/brand/content/${brand.id}.jhtml[/#if]"><img src="[#if brand.type == "image"]${brand.logo}[#else]${base}/resources/static/image/product/apple_logo-60x60.jpg[/#if]" title="${brand.name}" alt="${brand.name}" /></a>
								        <a href="[#if brand.url??]${brand.url}[#else]${base}/brand/content/${brand.id}.jhtml[/#if]">${brand.name}</a>
								    </div>
								    [/#list] 
								    [/@brand_list]
								</div>
                            </li>-->
                            <li class="contact-link"><a href="${base}/about.jhtml">About Us</a></li>
                            <li class="contact-link"><a href="${base}/help.jhtml">Help & FAQ</a></li>
                            <li class="custom-link-right"><a href="${base}/contact.jhtml" target="_blank">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Main Menu End-->
        </div>