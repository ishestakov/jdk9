package com.github.ishestakov.coe.pass.generator.api;

public class PasswordProperties {
	private final String symbols;
	private final int length;

	private PasswordProperties(String symbols, int length) {
		super();
		this.symbols = symbols;
		this.length = length;
	}

	public static PasswordProperties of(String symbols, int length) {
		return new PasswordProperties(symbols, length);
	}
}
