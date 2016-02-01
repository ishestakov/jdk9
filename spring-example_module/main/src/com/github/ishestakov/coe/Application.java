package com.github.ishestakov.coe;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

public class Application {
	@Autowired
	private PasswordGenerator passwordGenerator;
	@Value("${pass.symbols}")
	private String symbols;
	@Value("${pass.length}")
	private int length;

	public String generatePassword() {

		return passwordGenerator.generate(symbols, length);
	}
}
