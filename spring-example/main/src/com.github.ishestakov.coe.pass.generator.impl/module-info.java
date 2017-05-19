module com.github.ishestakov.coe.pass.generator.impl {
	requires transitive com.github.ishestakov.coe.pass.generator.api;
	provides com.github.ishestakov.coe.pass.generator.api.PasswordGenerator with com.github.ishestakov.coe.pass.generator.impl.PasswordGeneratorImpl;
}
