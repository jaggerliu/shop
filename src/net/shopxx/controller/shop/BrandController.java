/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.controller.shop;

import java.math.BigDecimal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.shopxx.Order;
import net.shopxx.Pageable;
import net.shopxx.ResourceNotFoundException;
import net.shopxx.entity.Brand;
import net.shopxx.entity.Product;
import net.shopxx.entity.ProductCategory;
import net.shopxx.entity.Promotion;
import net.shopxx.entity.Tag;
import net.shopxx.entity.Product.OrderType;
import net.shopxx.service.BrandService;
import net.shopxx.service.ProductCategoryService;
import net.shopxx.service.ProductService;
import net.shopxx.service.PromotionService;
import net.shopxx.service.SearchService;
import net.shopxx.service.TagService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Controller - 品牌
 * 
 * @author lj Team
 * @version 3.0
 */
@Controller("shopBrandController")
@RequestMapping("/brand")
public class BrandController extends BaseController {

	/** 每页记录数 */
	private static final int PAGE_SIZE = 40;

	@Resource(name = "brandServiceImpl")
	private BrandService brandService;
	@Resource(name = "productServiceImpl")
	private ProductService productService;
	@Resource(name = "productCategoryServiceImpl")
	private ProductCategoryService productCategoryService;
	@Resource(name = "promotionServiceImpl")
	private PromotionService promotionService;
	@Resource(name = "tagServiceImpl")
	private TagService tagService;
	@Resource(name = "searchServiceImpl")
	private SearchService searchService;

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(ModelMap model) {
		List<Brand> brands = brandService.findAll();
		HashSet<String> fset = new HashSet<String>();
		for (Brand brand : brands) {
			fset.add(brand.getName().substring(0, 1).toUpperCase());
		}
		List<String> flist = new ArrayList<String>(fset);
		Collections.sort(flist);// 排序
		List<Object> brandlist = new ArrayList<Object>();
		for (String string : flist) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			List<Brand> brandbyletter = new ArrayList<Brand>();
			for (Brand brand : brands) {				
				if (brand.getName().substring(0, 1).toUpperCase().equals(string)) {
					brandbyletter.add(brand);
				}			
			}
			map.put("code", string);
			map.put("brandd", brandbyletter);
			brandlist.add(map);
		}

		model.addAttribute("brandlist", brandlist);
 		return "/shop/proshow/brandlist";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/content/{brandId}", method = RequestMethod.GET)
	public String list(@PathVariable Long brandId, Long productCategoryId, Long promotionId, Long[] tagIds,
			BigDecimal startPrice, BigDecimal endPrice, OrderType orderType, Integer pageNumber, Integer pageSize,
			HttpServletRequest request, ModelMap model) {
		Brand brand = brandService.find(brandId);
		ProductCategory productCategory = productCategoryService.find(productCategoryId);
		if (brand == null) {
			throw new ResourceNotFoundException();
		}

		List<Order> orders = new ArrayList<Order>();
		List<Product> productList = productService.findList(null, brand, null, null, null, null, null, true, true, null,
				false, null, null, null, null, null, orders);
		HashSet<ProductCategory> rootset = new HashSet<ProductCategory>();
		for (Product product : productList) {
			rootset.add(product.getProductCategory());
		}

		Promotion promotion = promotionService.find(promotionId);
		List<Tag> tags = tagService.findList(tagIds);
		Pageable pageable = new Pageable(pageNumber, pageSize);
		model.addAttribute("orderTypes", OrderType.values());
		model.addAttribute("brand", brand);
		model.addAttribute("category", rootset);
		model.addAttribute("promotion", promotion);
		model.addAttribute("tags", tags);
		model.addAttribute("startPrice", startPrice);
		model.addAttribute("productCategoryId", productCategoryId);
		model.addAttribute("endPrice", endPrice);
		model.addAttribute("orderType", orderType);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("page", productService.findPage(productCategory, brand, promotion, tags, null, startPrice,
				endPrice, true, true, null, false, null, null, orderType, pageable));
		return "/shop/proshow/brand";
	}

}