/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.job;

import javax.annotation.Resource;

import net.shopxx.service.CartService;

import org.springframework.context.annotation.Lazy;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Job - 购物车
 * 
 * @author lj Team
 * @version 3.0
 */
@Component("cartJob")
@Lazy(false)
public class CartJob {

	@Resource(name = "cartServiceImpl")
	private CartService cartService;

	/**
	 * 清除过期购物车
	 */
	@Scheduled(cron = "${job.cart_evict_expired.cron}")
	public void evictExpired() {
		//无购物车 不执行
		//cartService.evictExpired();
	}

}