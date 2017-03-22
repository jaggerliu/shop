  <!--商品分类列表-->
    <ul id="sideManu" class="nav nav-tabs nav-stacked">
        [@product_category_root_list] 
        [#list productCategories as category]
        <li class="subMenu open"><a href="javaScript:void(0);"> ${category.name}</a>
            <ul [#if category_index !=0 ]style="display:none" [/#if]>
                [@product_category_children_list productCategoryId = category.id count = 4] 
                [#list productCategories as productCategory]
                <li><a [#if productCategory_index==0 ]class="active" [/#if] href="${base}${productCategory.path}"><i class="icon-chevron-right"></i>${productCategory.name}</a></li>
                [/#list] 
                [/@product_category_children_list]
            </ul>
        </li>
        [/#list] 
        [/@product_category_root_list]
    </ul>