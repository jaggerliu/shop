/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.service;

import net.shopxx.Page;
import net.shopxx.Pageable;
import net.shopxx.entity.Contact;
import net.shopxx.entity.Member;
import net.shopxx.entity.Product;

/**
 * Service - 联系
 * 
 * @author lj Team
 * @version 3.0
 */
public interface ContactService extends BaseService<Contact, Long> {

	/**
	 * 查找联系分页
	 * 
	 * @param islook
	 *            是否观看
	 * @param pageable
	 *            分页信息
	 * @return 收藏商品分页
	 */
	Page<Contact> findPage(Boolean isLook, Pageable pageable);
}