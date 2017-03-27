/*
 *   
 * Support: http://ni484sha.com
 * 
 */
package net.shopxx.template.directive;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.shopxx.Filter;
import net.shopxx.Order;
import net.shopxx.entity.ProductUse;
import net.shopxx.service.ProductUseService;

import org.springframework.stereotype.Component;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * 模板指令 - 用途列表
 * 
 * @author lj Team
 * @version 3.0
 */
@Component("productUseListDirective")
public class ProductUseListDirective extends BaseDirective {

	/** 变量名称 */
	private static final String VARIABLE_NAME = "productUses";

	@Resource(name = "productUseServiceImpl")
	private ProductUseService productUseService;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void execute(Environment env, Map params, TemplateModel[] loopVars, TemplateDirectiveBody body) throws TemplateException, IOException {
		List<ProductUse> productUses;
		boolean useCache = useCache(env, params);
		String cacheRegion = getCacheRegion(env, params);
		Integer count = getCount(params);
		List<Filter> filters = getFilters(params, ProductUse.class);
		List<Order> orders = getOrders(params);
		if (useCache) {
			productUses = productUseService.findList(count, filters, orders, cacheRegion);
		} else {
			productUses = productUseService.findList(count, filters, orders);
		}
		setLocalVariable(VARIABLE_NAME, productUses, env, body);
	}

}