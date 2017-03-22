/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.service;

import net.shopxx.entity.Log;

/**
 * Service - 日志
 * 
 * @author lj Team
 * @version 3.0
 */
public interface LogService extends BaseService<Log, Long> {

	/**
	 * 清空日志
	 */
	void clear();

}