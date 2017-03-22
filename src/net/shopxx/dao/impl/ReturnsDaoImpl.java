/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.dao.impl;

import net.shopxx.dao.ReturnsDao;
import net.shopxx.entity.Returns;

import org.springframework.stereotype.Repository;

/**
 * Dao - 退货单
 * 
 * @author lj Team
 * @version 3.0
 */
@Repository("returnsDaoImpl")
public class ReturnsDaoImpl extends BaseDaoImpl<Returns, Long> implements ReturnsDao {

}