package com.github.ishestakov.coe.pass.generator.api;

public interface PasswordGenerator {
	String generate(String symbols, int length);
}
