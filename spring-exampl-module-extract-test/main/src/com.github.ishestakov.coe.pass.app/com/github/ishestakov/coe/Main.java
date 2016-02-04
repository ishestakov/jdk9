package com.github.ishestakov.coe;

import org.springframework.beans.BeansException;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {

	private Application app;

	public static void main(String[] args) throws BeansException {
		AnnotationConfigApplicationContext applicationContext = new AnnotationConfigApplicationContext();
		applicationContext.register(com.github.ishestakov.coe.ApplicationContext.class);
		applicationContext.refresh();
		Application application = (Application) applicationContext.getBean("application");
		String pass = application.generatePassword();
		System.out.println("Generated password: " + pass);
	}
}
