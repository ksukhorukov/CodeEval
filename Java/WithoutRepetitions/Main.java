import java.io.*;
import java.util.*;

public class Main {

	public static void deleteRepetitions(String line) {

		Character curr_char = '\0';
		Character prev_char = '\0';
		boolean case_switched = false;
		for(Character elem : line.toCharArray()) {
			if (Character.isUpperCase(elem)) {
				curr_char = Character.toLowerCase(elem);
				case_switched = true;
			} else {
				curr_char = elem;
			}
			if ( !(curr_char == prev_char) ) {
				if (case_switched) { 
					System.out.print(Character.toUpperCase(curr_char));
					case_switched = false;
				} else {
					System.out.print(curr_char);
				}
				prev_char = curr_char;
			} else {
				prev_char = curr_char;
			}
		}
		System.out.println();
	}

	public static void main(String[] args) throws IOException {

		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String line;

		while((line = buffer.readLine()) != null) {
			line = line.trim();
			deleteRepetitions(line);
		}
	}

}