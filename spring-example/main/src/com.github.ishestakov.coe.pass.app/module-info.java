module com.github.ishestakov.coe.pass.app {
	exports com.github.ishestakov.coe;
	requires com.github.ishestakov.coe.pass.generator.api;
	requires spring.core;
	requires spring.context;
	requires spring.aop;
	requires spring.beans;
	requires spring.expression;
	requires java.sql;
	opens com.github.ishestakov.coe;
}
