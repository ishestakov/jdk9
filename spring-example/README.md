This example will show on how we simply can convert our existing spring application to a module and run it.

We'll do that step by step starting from a simple demo application that uses Spring Framework.
The Spring Framework can be avoided for the purpose of the application but we add it just for an example.

The application is a simple password generation application that will generate a password depending on application configuration in `password.properties` file

To build our examples we're going to use bash scripts as the existing tooling for JDK 9 is not sufficient at the moment.
Thus we'll manage all the dependencies by ourself and we'll try to use any build tool later on when they'll provide support for JDK 9
Moreover using bash scripts to build and run our application will show what is going on under the hood and we'll be able to feel the difference between `classpath` and `modulepath`.

For the build environment we'll use `Docker` and openjdk Docker images for both: 1.8 and 9 versions of java.

To build the sources with Java 1.8 you have to run the `compile_java.sh` script and pass 8 as it's argument: 
```bash
# compile_java.sh 8
```

To build the same sources with Java 9 you ought to run the 'compile_java.sh' script with "9" as it's argument:
```bash
# compile_java.sh 9
```

The output of the build you can find in `./target` directory
