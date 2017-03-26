/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.controller.shop;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.shopxx.Filter;
import net.shopxx.Order;
import net.shopxx.Pageable;
import net.shopxx.ResourceNotFoundException;
import net.shopxx.entity.Article;
import net.shopxx.entity.Attribute;
import net.shopxx.entity.Brand;
import net.shopxx.entity.Product;
import net.shopxx.entity.ProductCategory;
import net.shopxx.entity.ProductUse;
import net.shopxx.entity.Promotion;
import net.shopxx.entity.Tag;
import net.shopxx.entity.Product.OrderType;
import net.shopxx.service.BrandService;
import net.shopxx.service.ProductCategoryService;
import net.shopxx.service.ProductService;
import net.shopxx.service.ProductUseService;
import net.shopxx.service.PromotionService;
import net.shopxx.service.SearchService;
import net.shopxx.service.TagService;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Controller - 商品用途
 * 
 * @author lj Team
 * @version 3.0
 */
@Controller("shopProductUseController")
@RequestMapping("/productUse")
public class ProductUseController extends BaseController {

	/** 每页记录数 */
	private static final int PAGE_SIZE = 40;

	@Resource(name = "productUseServiceImpl")
	private ProductUseService productUseService;
	@Resource(name = "productServiceImpl")
	private ProductService productService;
	@Resource(name = "productCategoryServiceImpl")
	private ProductCategoryService productCategoryService;
	@Resource(name = "brandServiceImpl")
	private BrandService brandService;
	@Resource(name = "promotionServiceImpl")
	private PromotionService promotionService;
	@Resource(name = "tagServiceImpl")
	private TagService tagService;
	@Resource(name = "searchServiceImpl")
	private SearchService searchService;

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list/{pageNumber}", method = RequestMethod.GET)
	public String list(@PathVariable Integer pageNumber, ModelMap model) {
		Pageable pageable = new Pageable(pageNumber, PAGE_SIZE);
		model.addAttribute("page", productUseService.findPage(pageable));
		return "/shop/proshow/list";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/content/{productUseId}", method = RequestMethod.GET)
	public String list(@PathVariable Long productUseId, Long brandId, Long promotionId, Long[] tagIds,
			BigDecimal startPrice, BigDecimal endPrice, OrderType orderType, Integer pageNumber, Integer pageSize,
			HttpServletRequest request, ModelMap model) {
		ProductUse productUse = productUseService.find(productUseId);
		if (productUse == null) {
			throw new ResourceNotFoundException();
		}

		List<Order> orders = new ArrayList<Order>();
		List<Product> productList = productService.findList(null, productUse, null, null, null, null, null, null, true,
				true, null, false, null, null, null, null, null, orders);
		HashSet<ProductCategory> rootset = new HashSet<ProductCategory>();
		for (Product product : productList) {
			rootset.add(product.getProductCategory());
		}

		Brand brand = brandService.find(brandId);
		Promotion promotion = promotionService.find(promotionId);
		List<Tag> tags = tagService.findList(tagIds);
		Pageable pageable = new Pageable(pageNumber, pageSize);
		model.addAttribute("orderTypes", OrderType.values());
		model.addAttribute("brand", brand);
		model.addAttribute("category", rootset);
		model.addAttribute("promotion", promotion);
		model.addAttribute("tags", tags);
		model.addAttribute("startPrice", startPrice);
		model.addAttribute("productUse", productUse);
		model.addAttribute("endPrice", endPrice);
		model.addAttribute("orderType", orderType);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("page", productService.findPage(null, productUse, brand, promotion, tags, null, startPrice,
				endPrice, true, true, null, false, null, null, orderType, pageable));
		// return "/shop/product/list";
		return "/shop/proshow/usefor";
	}
}