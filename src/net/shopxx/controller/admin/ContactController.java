/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.controller.admin;

import javax.annotation.Resource;

import net.shopxx.Message;
import net.shopxx.Pageable;
import net.shopxx.entity.Contact;
import net.shopxx.service.ContactService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Controller - 广告
 * 
 * @author lj Team
 * @version 3.0
 */
@Controller("adminContactController")
@RequestMapping("/admin/contact")
public class ContactController extends BaseController {

	@Resource(name = "contactServiceImpl")
	private ContactService contactService;

	/**
	 * 编辑
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Long id, ModelMap model) {
		model.addAttribute("contact", contactService.find(id));
		return "/admin/contact/edit";
	}

	/**
	 * 更新
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Contact contact, RedirectAttributes redirectAttributes) {
		if (!isValid(contact)) {
			return ERROR_VIEW;
		}
		contactService.update(contact);
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, ModelMap model) {
		model.addAttribute("page", contactService.findPage(pageable));
		return "/admin/contact/list";
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody
	Message delete(Long[] ids) {
		contactService.delete(ids);
		return SUCCESS_MESSAGE;
	}

}