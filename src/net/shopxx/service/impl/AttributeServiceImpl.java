/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.service.impl;

import javax.annotation.Resource;

import net.shopxx.dao.AttributeDao;
import net.shopxx.entity.Attribute;
import net.shopxx.service.AttributeService;

import org.springframework.stereotype.Service;

/**
 * Service - 属性
 * 
 * @author lj Team
 * @version 3.0
 */
@Service("attributeServiceImpl")
public class AttributeServiceImpl extends BaseServiceImpl<Attribute, Long> implements AttributeService {

	@Resource(name = "attributeDaoImpl")
	public void setBaseDao(AttributeDao attributeDao) {
		super.setBaseDao(attributeDao);
	}

}