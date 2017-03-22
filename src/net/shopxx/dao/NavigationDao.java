/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.dao;

import java.util.List;

import net.shopxx.entity.Navigation;
import net.shopxx.entity.Navigation.Position;

/**
 * Dao - 导航
 * 
 * @author lj Team
 * @version 3.0
 */
public interface NavigationDao extends BaseDao<Navigation, Long> {

	/**
	 * 查找导航
	 * 
	 * @param position
	 *            位置
	 * @return 导航
	 */
	List<Navigation> findList(Position position);

}