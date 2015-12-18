package draft.jep102;

import java.util.Arrays;

public class ProcessApiMain {
	public static void main(String[] args) throws InterruptedException {
		ProcessHandle currentProcessHandle = ProcessHandle.current();
		System.out.println(currentProcessHandle.getPid());
		currentProcessHandle.parent().ifPresent(parentProcId -> System.out.println("Parent process ID: #" + parentProcId));
		currentProcessHandle.info().user().ifPresent(user -> System.out.println("The username is: " + user));
		currentProcessHandle.info().arguments().ifPresent(arguments -> {System.out.println("Command Line arguments:"); Arrays.stream(arguments).forEach(System.out::println);});
		currentProcessHandle.info().commandLine().ifPresent(command -> System.out.println("Command line: " + command));

		Thread.sleep(10000);
		currentProcessHandle.info().totalCpuDuration().ifPresent(commandDuration -> System.out.println("Total CPU time: " + commandDuration));
		currentProcessHandle.info().startInstant().ifPresent(startTime -> System.out.println("Start time: " + startTime));
	}
}
