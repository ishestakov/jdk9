module com.github.ishestakov.coe {
	exports com.github.ishestakov.coe;
	requires java.sql;
	provides com.github.ishestakov.coe.PasswordGenerator with com.github.ishestakov.coe.PasswordGeneratorImpl;
//	opens com.github.ishestakov.coe;
}
