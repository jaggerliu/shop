/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.service.impl;

import javax.annotation.Resource;

import net.shopxx.dao.ContactDao;
import net.shopxx.entity.Contact;
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
	public void setBaseDao(ContactDao contactDao) {
		super.setBaseDao(contactDao);
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