/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.dao.impl;

import net.shopxx.dao.ContactDao;
import net.shopxx.entity.Contact;

import org.springframework.stereotype.Repository;

/**
 * Dao - 联系
 * 
 * @author lj Team
 * @version 3.0
 */
@Repository("contactDaoImpl")
public class ContactDaoImpl extends BaseDaoImpl<Contact, Long> implements ContactDao {

}