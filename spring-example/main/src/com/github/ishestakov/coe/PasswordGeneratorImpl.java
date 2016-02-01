package com.github.ishestakov.coe;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class PasswordGeneratorImpl implements PasswordGenerator {
	public static final String ALGORITHM_NAME = "SHA1PRNG";
	private final SecureRandom random;

	public PasswordGeneratorImpl() throws NoSuchAlgorithmException {
		this.random = SecureRandom.getInstance(ALGORITHM_NAME);
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
