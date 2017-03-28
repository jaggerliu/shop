/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.service;

import java.util.List;

import net.shopxx.Filter;
import net.shopxx.Order;
import net.shopxx.entity.ProductUse;

/**
 * Service - 用途
 * 
 * @author lj Team
 * @version 3.0
 */
public interface ProductUseService extends BaseService<ProductUse, Long> {

	/**
	 * 查找品牌(缓存)
	 * 
	 * @param count
	 *            数量
	 * @param filters
	 *            筛选
	 * @param orders
	 *            排序
	 * @param cacheRegion
	 *            缓存区域
	 * @return 品牌(缓存)
	 */
	List<ProductUse> findList(Integer count, List<Filter> filters, List<Order> orders, String cacheRegion);

}