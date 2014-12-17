import java.util.*;
import java.io.*;

public class Main {
	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String line;
		while((line = buffer.readLine()) != null) {

			//count the number of occurences of particular number in string
			//traverse through counter and get the number with count > L/2
			//if no such number - print none
			
			Hashtable<Integer, Integer> frequency = new Hashtable<Integer, Integer>();
			line = line.trim();
			String[] data = line.split(",");

			Integer number, curr_value, longest; 

			Integer length = data.length;

			for(String elem: data) {
				number = Integer.parseInt(elem);
				curr_value = frequency.get(number);
				if (curr_value != null) {
					frequency.put(number, curr_value + 1);
				} else {
					frequency.put(number, 1);
				}
			}

			// for(Integer n: frequency.keySet()) {
			// 	System.out.print(n);
			// 	System.out.print("-");
			// 	System.out.println(frequency.get(n));
			// 	System.out.println();
			// }

			longest = null;
			for(Integer n: frequency.keySet()) {
				curr_value = frequency.get(n);
				if (curr_value > length / 2) {
					longest = n;
				}
			}

			if ( longest != null ) {
				System.out.println(longest);
			} else {
				System.out.println("None");
			}

		}
	}
}