/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.controller.shop;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.shopxx.Message;
import net.shopxx.Pageable;
import net.shopxx.ResourceNotFoundException;
import net.shopxx.Setting;
import net.shopxx.Setting.CaptchaType;
import net.shopxx.Setting.ReviewAuthority;
import net.shopxx.entity.Brand;
import net.shopxx.entity.Contact;
import net.shopxx.entity.Member;
import net.shopxx.entity.Product;
import net.shopxx.entity.Review;
import net.shopxx.service.BrandService;
import net.shopxx.service.ContactService;
import net.shopxx.util.SettingUtils;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Controller - 联系我们
 * 
 * @author lj Team
 * @version 3.0
 */
@Controller("shopContactController")
@RequestMapping("/contact")
public class ContactController extends BaseController {

	@Resource(name = "contactServiceImpl")
	private ContactService contactService;
	/**
	 * 内容
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "/shop/proshow/contact";
	}
	
	/**
	 * 保存
	 */
	@RequestMapping(value = "/save", method = RequestMethod.GET)
	public @ResponseBody
	Message save(String content,String firstname,String lastname,String company, String phone ,String email, HttpServletRequest request) {
		if (!isValid(Contact.class, "content", content) 
				|| !isValid(Contact.class, "lastname", lastname) 
				|| !isValid(Contact.class, "firstname", firstname) 
				|| !isValid(Contact.class, "email", email)
				|| !isValid(Contact.class, "phone", phone)) {
			return ERROR_MESSAGE;
		}
		Contact contact = new Contact();
		contact.setCompany(company);
		contact.setContent(content);
		contact.setEmail(email);
		contact.setFirstname(firstname);
		contact.setLastname(lastname);
		contact.setPhone(phone);
		contact.setIsLook(false);
		contact.setIp(request.getRemoteAddr());
		contactService.save(contact);
		return Message.success("success");
	}
}