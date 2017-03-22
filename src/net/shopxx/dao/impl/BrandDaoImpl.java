/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.dao.impl;

import net.shopxx.dao.BrandDao;
import net.shopxx.entity.Brand;

import org.springframework.stereotype.Repository;

/**
 * Dao - 品牌
 * 
 * @author lj Team
 * @version 3.0
 */
@Repository("brandDaoImpl")
public class BrandDaoImpl extends BaseDaoImpl<Brand, Long> implements BrandDao {

}