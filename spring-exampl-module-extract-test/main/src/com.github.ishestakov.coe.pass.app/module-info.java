module com.github.ishestakov.coe.pass.app {
	exports com.github.ishestakov.coe;
	requires com.github.ishestakov.coe.pass.generator.api;
	uses com.github.ishestakov.coe.pass.generator.api.PasswordGenerator;
	requires spring.beans;
	requires spring.context;
	requires java.sql;
}
