/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.dao;

import net.shopxx.entity.DeliveryCenter;

/**
 * Dao - 发货点
 * 
 * @author lj Team
 * @version 3.0
 */
public interface DeliveryCenterDao extends BaseDao<DeliveryCenter, Long> {

	/**
	 * 查找默认发货点
	 * 
	 * @return 默认发货点，若不存在则返回null
	 */
	DeliveryCenter findDefault();

}