package com.github.ishestakov.coe;

import org.springframework.beans.factory.config.ServiceLocatorFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import com.github.ishestakov.coe.pass.generator.api.PasswordGenerator;

import java.util.ServiceLoader;

/**
 * Created by illia on 04.02.16.
 */
@Configuration
@PropertySource("password.properties")
public class ApplicationContext {
    @Bean
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }

    @Bean
    public PasswordGenerator passwordGenerator() {
        ServiceLoader<PasswordGenerator> loader = ServiceLoader.load(PasswordGenerator.class);
        return loader.iterator().next();

    }

    @Bean
    public Application application() {
        return new Application();
    }
}
