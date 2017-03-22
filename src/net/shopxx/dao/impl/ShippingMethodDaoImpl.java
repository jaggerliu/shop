/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.dao.impl;

import net.shopxx.dao.ShippingMethodDao;
import net.shopxx.entity.ShippingMethod;

import org.springframework.stereotype.Repository;

/**
 * Dao - 配送方式
 * 
 * @author lj Team
 * @version 3.0
 */
@Repository("shippingMethodDaoImpl")
public class ShippingMethodDaoImpl extends BaseDaoImpl<ShippingMethod, Long> implements ShippingMethodDao {

}