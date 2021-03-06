/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.service.impl;

import javax.annotation.Resource;

import net.shopxx.dao.OrderLogDao;
import net.shopxx.entity.OrderLog;
import net.shopxx.service.OrderLogService;

import org.springframework.stereotype.Service;

/**
 * Service - 订单日志
 * 
 * @author lj Team
 * @version 3.0
 */
@Service("orderLogServiceImpl")
public class OrderLogServiceImpl extends BaseServiceImpl<OrderLog, Long> implements OrderLogService {

	@Resource(name = "orderLogDaoImpl")
	public void setBaseDao(OrderLogDao orderLogDao) {
		super.setBaseDao(orderLogDao);
	}

}