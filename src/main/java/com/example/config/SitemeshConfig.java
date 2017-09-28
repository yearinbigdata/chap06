package com.example.config;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class SitemeshConfig {
	
	@Bean
	FilterRegistrationBean<ConfigurableSiteMeshFilter> siteMeshFilter(){
		FilterRegistrationBean<ConfigurableSiteMeshFilter> filter = 
				new FilterRegistrationBean<>();
		
		filter.setFilter(new ConfigurableSiteMeshFilter() {
			@Override
			protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
				builder.addDecoratorPaths("/board/*", "/WEB-INF/decorators/board.jsp");
				builder.addDecoratorPaths("/dept/*", "/WEB-INF/decorators/dept.jsp");
				builder.addDecoratorPaths("/emp/*", "/WEB-INF/decorators/emp.jsp");
				builder.addDecoratorPaths("/city/*", "/WEB-INF/decorators/city.jsp");
				builder.addDecoratorPaths("/country/*", "/WEB-INF/decorators/country.jsp");
				builder.addDecoratorPaths("/ontime/*", "/WEB-INF/decorators/ontime.jsp");
				builder.addDecoratorPaths("/bootstrap/*", "/WEB-INF/decorators/bootstrap.jsp");
				//데코도 따로함
			}
		});
		
		filter.setUrlPatterns(Arrays.asList("/board/*", 
												 "/dept/*", 
												 "/emp/*", 
												 "/city/*", 
												 "/country/*", 
												 "/ontime/*",
												 "/bootstrap/*"));
		
		return filter;
	}

	@Bean
	FilterRegistrationBean<Filter> testFilter() {
		FilterRegistrationBean<Filter> filter = new FilterRegistrationBean<>();

		filter.setFilter(new Filter() {
			
			@Override
			public void init(FilterConfig filterConfig) throws ServletException {
				System.out.println("###################");
				System.out.println("## My Filter init()");
				System.out.println("###################");
			}
			
			@Override
			public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
					throws IOException, ServletException {
				System.out.println("###");
				System.out.println("### My Filter doFilter() start...");
				System.out.println("###");
				chain.doFilter(request, response);
				System.out.println("###");
				System.out.println("### My Filter doFilter() end...");
				System.out.println("###");
			}
			
			@Override
			public void destroy() {
				System.out.println("######################");
				System.out.println("## My Filter destory()");
				System.out.println("######################");
			}
		});
		filter.setUrlPatterns(Arrays.asList("/dept/*", "/emp/*"));
		
		return filter;
	}
	
}
