/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.dao;

import java.util.List;

import net.shopxx.entity.Area;

/**
 * Dao - 地区
 * 
 * @author lj Team
 * @version 3.0
 */
public interface AreaDao extends BaseDao<Area, Long> {

	/**
	 * 查找顶级地区
	 * 
	 * @param count
	 *            数量
	 * @return 顶级地区
	 */
	List<Area> findRoots(Integer count);

}