/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.controller.admin;

import javax.annotation.Resource;

import net.shopxx.Message;
import net.shopxx.Pageable;
import net.shopxx.entity.ProductUse;
import net.shopxx.service.ProductUseService;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Controller - 品牌
 * 
 * @author lj Team
 * @version 3.0
 */
@Controller("adminProductUseController")
@RequestMapping("/admin/product_use")
public class ProductUseController extends BaseController {

	@Resource(name = "productUseServiceImpl")
	private ProductUseService productUseService;

	/**
	 * 添加
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap model) {
		
		return "/admin/product_use/add";
	}

	/**
	 * 保存
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(ProductUse productUse, RedirectAttributes redirectAttributes) {
		if (!isValid(productUse)) {
			return ERROR_VIEW;
		}
		productUse.setProducts(null);
		productUseService.save(productUse);
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 编辑
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Long id, ModelMap model) {
		model.addAttribute("productUse", productUseService.find(id));
		return "/admin/product_use/edit";
	}

	/**
	 * 更新
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ProductUse productUse, RedirectAttributes redirectAttributes) {
		if (!isValid(productUse)) {
			return ERROR_VIEW;
		}

		productUseService.update(productUse, "products", "productCategories", "promotions");
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, ModelMap model) {
		model.addAttribute("page", productUseService.findPage(pageable));
		return "/admin/product_use/list";
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody
	Message delete(Long[] ids) {
		productUseService.delete(ids);
		return SUCCESS_MESSAGE;
	}

}