/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.job;

import javax.annotation.Resource;

import net.shopxx.service.OrderService;

import org.springframework.context.annotation.Lazy;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Job - 订单
 * 
 * @author lj Team
 * @version 3.0
 */
@Component("orderJob")
@Lazy(false)
public class OrderJob {

	@Resource(name = "orderServiceImpl")
	private OrderService orderService;

	/**
	 * 释放过期订单库存
	 */
	@Scheduled(cron = "${job.order_release_stock.cron}")
	public void releaseStock() {
		//没有订单不执行
		//orderService.releaseStock();
	}

}