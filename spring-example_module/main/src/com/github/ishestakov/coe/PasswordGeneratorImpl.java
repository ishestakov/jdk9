package com.github.ishestakov.coe;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class PasswordGeneratorImpl implements PasswordGenerator {
	private final SecureRandom random;

	public PasswordGeneratorImpl() throws NoSuchAlgorithmException {
		this.random = SecureRandom.getInstance("SHA1PRNG");
	}

	@Override
	public String generate(String symbols, int length) {
		StringBuilder builder = new StringBuilder(length);
		for (int i = 0; i < length; i++) {
			builder.append(symbols.charAt(random.nextInt(length)));
		}
		return builder.toString();
	}
}
