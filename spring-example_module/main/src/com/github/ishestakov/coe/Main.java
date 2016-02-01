package com.github.ishestakov.coe;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

	private Application app;

	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-context.xml");
		Application application = (Application) applicationContext.getBean("application");
		String pass = application.generatePassword();
		System.out.println("Generated password: " + pass);
	}
}