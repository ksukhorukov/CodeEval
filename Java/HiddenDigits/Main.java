import java.io.*;
import java.util.*;

public class Main {

	public static char getChar(int i) {
    return i<0 || i>25 ? '?' : (char)('A' + i);
	}
	public static void main(String[] args) throws IOException {

		Map<Character, Integer> map = new HashMap<>();

		map.put('a', 0);
		map.put('b', 1);
		map.put('c', 2);
		map.put('d', 3);
		map.put('e', 4);
		map.put('f', 5);
		map.put('g', 6);
		map.put('h', 7);
		map.put('i', 8);
		map.put('j', 9);


		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));

		String line;
		while((line = buffer.readLine()) != null) {
			Integer counter = 0;
			for(char c : line.toCharArray()) {
				if (Character.isDigit(c)) {
					System.out.print(c);
					counter++;
				} else if ( map.containsKey(c) ) {
					 Integer number = map.get(c);
					 if (number != null) {
					 		System.out.print(Integer.toString(number));
					 		counter++;
					 }
				}
			}
			if (counter == 0) {
				System.out.println("NONE");
			} else {
				System.out.println();
			}
		}

	}
}