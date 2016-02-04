module com.github.ishestakov.coe.pass.generator.impl {
	requires public com.github.ishestakov.coe.pass.generator.api;
	provides com.github.ishestakov.coe.pass.generator.api.PasswordGenerator with com.github.ishestakov.coe.pass.generator.impl.PasswordGeneratorImpl;
}
