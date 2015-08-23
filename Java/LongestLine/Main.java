import java.io.*;
import java.util.*;


public class Main {

	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String line;
		Integer n_max;
		n_max = Integer.parseInt(buffer.readLine());
		SortedMap <String, Integer> map = new SortedMap <String, Integer>( new Comparator<Integer> {
			public int compar(Integer o1, Integer o2) {
				return o2.compareTo(o1);
			}
		}


			); 
		System.out.println("Number of max lines to find: " + String.valueOf(n_max));

		while((line = buffer.readLine()) != null) {
			System.out.println(line);
			line = line.trim();
			map.put(line, line.length());
		}
	}

}