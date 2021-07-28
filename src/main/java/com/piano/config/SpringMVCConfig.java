/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 *
 * @author Administrator
 */
@EnableWebMvc
@Configuration
@ComponentScan({"com.piano"})
public class SpringMVCConfig extends WebMvcConfigurerAdapter{
    @Bean
    public ViewResolver viewResolver(){
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/us/**").addResourceLocations("/resources/template/user/").setCachePeriod(31556926);
        registry.addResourceHandler("/ad/**").addResourceLocations("/resources/template/admin/").setCachePeriod(31556926);
        registry.addResourceHandler("/libraries/**").addResourceLocations("/WEB-INF/libraries/").setCachePeriod(31556926);

    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }
    
    @Bean(name = "multipartResolver")
    public MultipartResolver getMultipartResolver() {
        CommonsMultipartResolver resover = new CommonsMultipartResolver();
        resover.setMaxUploadSize(100 * 1024 * 1024);
 
        return resover;
    }
    
}
