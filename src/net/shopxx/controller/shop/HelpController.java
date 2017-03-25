/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.controller.shop;

import javax.annotation.Resource;

import net.shopxx.Pageable;
import net.shopxx.ResourceNotFoundException;
import net.shopxx.entity.Brand;
import net.shopxx.service.BrandService;

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
@Controller("shopHelpController")
@RequestMapping("/help")
public class HelpController extends BaseController {


	/**
	 * 内容
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "/shop/proshow/help";
	}

}