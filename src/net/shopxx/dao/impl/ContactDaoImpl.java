/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.dao.impl;

import net.shopxx.Page;
import net.shopxx.Pageable;
import net.shopxx.dao.ContactDao;
import net.shopxx.entity.Contact;
import net.shopxx.entity.Member;
import net.shopxx.entity.Product;

import java.util.Collections;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

/**
 * Dao - 联系
 * 
 * @author lj Team
 * @version 3.0
 */
@Repository("contactDaoImpl")
public class ContactDaoImpl extends BaseDaoImpl<Contact, Long> implements ContactDao {
	
	public Page<Contact> findPage(Boolean isLook, Pageable pageable) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Contact> criteriaQuery = criteriaBuilder.createQuery(Contact.class);
		Root<Contact> root = criteriaQuery.from(Contact.class);
		criteriaQuery.select(root);
		Predicate restrictions = criteriaBuilder.conjunction();
		if (isLook != null) {
			restrictions = criteriaBuilder.and(restrictions, criteriaBuilder.equal(root.get("isLook"), isLook));
		}
		criteriaQuery.where(restrictions);
		return super.findPage(criteriaQuery, pageable);
	}

}