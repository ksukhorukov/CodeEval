import java.io.*;
import java.util.*;

public class Main {

	public static ArrayList<Integer> modify(ArrayList<Integer> arr, String swap) {
		swap = swap.trim();
		String data[] = swap.split("-");
		Integer idx1 = Integer.parseInt(data[0]);
		Integer idx2 = Integer.parseInt(data[1]);
		Integer tmp = arr.get(idx1);
		arr.set(idx1, arr.get(idx2));
		arr.set(idx2, tmp);
		return arr;
	}

	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));

		String line;
		while((line = buffer.readLine()) != null) {

			String[] data = line.split(":");
			String[] array = data[0].split(" ");
			String[] swaps = data[1].split(",");

			Integer n; 
			ArrayList<Integer> numbers = new ArrayList<Integer>(); 
			

			for (String chr : array) {
				n = Integer.parseInt(chr);
				numbers.add(n);
				//System.out.print(n);
			}
			//System.out.println();

			// System.out.println(array);
			// System.out.println(swaps);

			for(String swap : swaps) {
				numbers = modify(numbers, swap);
			}
			//swaps = swaps.split(",");

			// for(String swap : swaps) {
			// 	numbers = modify(numbers, swap);
			// }
			for(Integer numb: numbers) {
				System.out.print(Integer.toString(numb) + " ");
			}
			System.out.println();
		}
	}
}