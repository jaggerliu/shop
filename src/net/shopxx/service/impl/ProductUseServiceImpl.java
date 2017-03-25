/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.shopxx.Filter;
import net.shopxx.Order;
import net.shopxx.dao.ProductUseDao;
import net.shopxx.entity.ProductUse;
import net.shopxx.service.ProductUseService;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service - 品牌
 * 
 * @author lj Team
 * @version 3.0
 */
@Service("productUseServiceImpl")
public class ProductUseServiceImpl extends BaseServiceImpl<ProductUse, Long> implements ProductUseService {

	@Resource(name = "productUseDaoImpl")
	private ProductUseDao productUseDao;

	@Resource(name = "productUseDaoImpl")
	public void setBaseDao(ProductUseDao productUseDao) {
		super.setBaseDao(productUseDao);
	}

	@Transactional(readOnly = true)
	public List<ProductUse> findList(Integer count, List<Filter> filters, List<Order> orders, String cacheRegion) {
		return productUseDao.findList(null, count, filters, orders);
	}

	@Override
	@Transactional
	public void save(ProductUse productUse) {
		super.save(productUse);
	}

	@Override
	@Transactional
	public ProductUse update(ProductUse productUse) {
		return super.update(productUse);
	}

	@Override
	@Transactional
	public ProductUse update(ProductUse productUse, String... ignoreProperties) {
		return super.update(productUse, ignoreProperties);
	}

	@Override
	@Transactional
	public void delete(Long id) {
		super.delete(id);
	}

	@Override
	@Transactional
	public void delete(Long... ids) {
		super.delete(ids);
	}

	@Override
	@Transactional
	public void delete(ProductUse productUse) {
		super.delete(productUse);
	}

}