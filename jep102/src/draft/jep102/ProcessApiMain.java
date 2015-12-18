package draft.jep102;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.stream.Collectors;

public class ProcessApiMain {
	public static void main(String[] args) throws InterruptedException, ExecutionException, IOException {
		currentProcessInfo();
	}

	private static void currentProcessInfo() throws InterruptedException, IOException {
		ProcessHandle currentProcessHandle = ProcessHandle.current();
		long currentPID = currentProcessHandle.getPid();
		System.out.println("Current JVM process ID: #" + currentPID);
		currentProcessHandle.parent().ifPresent(parentProcId -> System.out.println("Parent process ID: #" + parentProcId));
		ProcessHandle.Info processInfo = currentProcessHandle.info();
		processInfo.user().ifPresent(user -> System.out.println("The username is: " + user));
		processInfo.arguments().ifPresent(arguments -> {System.out.println("Command Line arguments:");
			System.out.println(Arrays.stream(arguments).collect(Collectors.joining("\t|\t")));});
		processInfo.commandLine().ifPresent(command -> System.out.println("Command line: " + command));

		System.out.println("Process list:");
		Process processListProcess = Runtime.getRuntime().exec("ps -elf");
		BufferedReader reader = new BufferedReader(new InputStreamReader(processListProcess.getInputStream()));
		try(reader) {
			reader.lines().filter(line -> line.contains(String.valueOf(currentPID))).forEach(System.out::println);
		}

		System.out.println("The GREP command process PID: #" + processListProcess.getPid());

		processInfo.totalCpuDuration().ifPresent(commandDuration -> System.out.println("Total CPU time: " + commandDuration));
		processInfo.startInstant().ifPresent(startTime -> System.out.println("Start time: " + startTime));
	}
}
