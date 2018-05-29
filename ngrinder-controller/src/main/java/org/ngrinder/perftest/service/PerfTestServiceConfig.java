package org.ngrinder.perftest.service;

import org.ngrinder.infra.config.Config;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.Profile;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * Dynamic creation of {@link PerfTestService} depending on the cluster enable or disable.
 *
 * @author JunHo Yoon
 * @since 3.1
 */
@Configuration
@Profile("production")
@EnableScheduling
@EnableTransactionManagement
@EnableAspectJAutoProxy
public class PerfTestServiceConfig implements ApplicationContextAware {

	@Autowired
	private Config config;
	@Autowired
	private ApplicationContext applicationContext;

	/**
	 * Create PerTest service depending on cluster mode.
	 *
	 * @return {@link PerfTestService}
	 */
	@Bean(name = "perfTestService")
	public PerfTestService perfTestService() {
		return applicationContext.getAutowireCapableBeanFactory().createBean(
			config.isClustered() ? ClusteredPerfTestService.class : PerfTestService.class);
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) {
		this.applicationContext = applicationContext;
	}
}
