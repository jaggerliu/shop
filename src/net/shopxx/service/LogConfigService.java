/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.service;

import java.util.List;

import net.shopxx.LogConfig;

/**
 * Service - 日志配置
 * 
 * @author lj Team
 * @version 3.0
 */
public interface LogConfigService {

	/**
	 * 获取所有日志配置
	 * 
	 * @return 所有日志配置
	 */
	List<LogConfig> getAll();

}