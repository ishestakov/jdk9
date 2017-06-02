package com.github.ishestakov.coe.pass.generator.impl;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import com.github.ishestakov.coe.pass.generator.api.PasswordGenerator;

public class PasswordGeneratorImpl implements PasswordGenerator {
	private final SecureRandom random;

	public PasswordGeneratorImpl() throws NoSuchAlgorithmException {
		this.random = SecureRandom.getInstance("SHA1PRNG");
	}

	@Override
	public String generate(String symbols, int length) {
		StringBuilder builder = new StringBuilder(length);
		for (int i = 0; i < length; i++) {
			builder.append(symbols.charAt(random.nextInt(symbols.length())));
		}
		return builder.toString();
	}
}
