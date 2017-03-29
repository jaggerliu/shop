/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.service.impl;

import javax.annotation.Resource;

import net.shopxx.Page;
import net.shopxx.Pageable;
import net.shopxx.dao.ContactDao;
import net.shopxx.dao.ProductDao;
import net.shopxx.entity.Contact;
import net.shopxx.entity.Member;
import net.shopxx.entity.Product;
import net.shopxx.service.ContactService;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service - 广告
 * 
 * @author lj Team
 * @version 3.0
 */
@Service("contactServiceImpl")
public class ContactServiceImpl extends BaseServiceImpl<Contact, Long> implements ContactService {
	
	@Resource(name = "contactDaoImpl")
	private ContactDao contactDao;
	@Resource(name = "contactDaoImpl")
	public void setBaseDao(ContactDao contactDao) {
		super.setBaseDao(contactDao);
	}

	@Transactional(readOnly = true)
	public Page<Contact> findPage(Boolean isLook, Pageable pageable) {
		return contactDao.findPage(isLook, pageable);
	}

	@Override
	@Transactional
	public void save(Contact contact) {
		super.save(contact);
	}

	@Override
	@Transactional
	public Contact update(Contact contact) {
		return super.update(contact);
	}

	@Override
	@Transactional
	public Contact update(Contact contact, String... ignoreProperties) {
		return super.update(contact, ignoreProperties);
	}

	@Override
	@Transactional
	public void delete(Long id) {
		super.delete(id);
	}

	@Override
	@Transactional
	public void delete(Long... ids) {
		super.delete(ids);
	}

	@Override
	@Transactional
	public void delete(Contact contact) {
		super.delete(contact);
	}

}