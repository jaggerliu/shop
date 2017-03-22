/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.dao;

import java.util.List;

import net.shopxx.entity.Tag;
import net.shopxx.entity.Tag.Type;

/**
 * Dao - 标签
 * 
 * @author lj Team
 * @version 3.0
 */
public interface TagDao extends BaseDao<Tag, Long> {

	/**
	 * 查找标签
	 * 
	 * @param type
	 *            类型
	 * @return 标签
	 */
	List<Tag> findList(Type type);

}