  <!--商品分类列表-->
    <h3 class="subtitle">Categories</h3>
    <div class="box-category">
        <ul id="cat_accordion">
        	[#if productCategory??]
        	[#assign thiscategory = productCategory]
        	[/#if]
            [@product_category_root_list]
            [#list productCategories as category]
            <li><a [#if thiscategory?? &&(thiscategory.id == category.id || (thiscategory.parent?? && thiscategory.parent.id ==category.id)) ]class="active"[/#if] href="${base}${category.path}">${category.name}</a> [#if category.children?? && (category.children?size > 0)]<span class="down"></span>[/#if]
                <ul [#if category_index==0 ]style="display:block;"[/#if]>
                    [@product_category_children_list productCategoryId = category.id] 
                    [#list productCategories as productCategory]
                    <li><a href="${base}${productCategory.path}" [#if thiscategory?? &&(thiscategory.id == productCategory.id ) ]class="active"[/#if]>${productCategory.name}</a> [#if productCategory.children?? && (productCategory.children?size > 0)]<span class="down"></span>[/#if]</span>
                        <ul>
                            [@product_category_children_list productCategoryId = productCategory.id]
                             [#list productCategories as productCategory_t]
                            <li><a href="${base}${productCategory_t.path}">${productCategory_t.name}</a></li>
                            [/#list] 
                            [/@product_category_children_list]
                        </ul>
                    </li>
                    [/#list] 
                    [/@product_category_children_list]
                </ul>
            </li>
            [/#list] 
            [/@product_category_root_list]
        </ul>
    </div>