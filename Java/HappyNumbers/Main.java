import java.io.*;
import java.util.*;

public class Main {
	
	public static String calcSquares(String numbers) {
		String[] digits = numbers.split("");
		Integer sqr = 1;
		Integer number;
		Integer sum = 0;
		for(String n : digits) {
			number = Integer.parseInt(n);
			sqr = number * number;
			sum = sum + sqr;
		}
		return String.valueOf(sum);
	}

	public static boolean isHappy(String number) {
		//System.out.println(number);
		Hashtable <String, Boolean> map = new Hashtable <String, Boolean>();
		String sqr_sum = calcSquares(number);
		while (true) { 
			if (map.containsKey(sqr_sum)) {
				return false;
			} else {
				map.put(sqr_sum, true);
				if(Integer.parseInt(sqr_sum) == 1) {
					return true;
				} else {
					sqr_sum = calcSquares(sqr_sum);
				}
			}
		}
		
	}

	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String line;
		while((line = buffer.readLine()) != null) {
			line = line.trim();
			if (isHappy(line)) {
				System.out.println("1");
			} else {
				System.out.println("0");
			}
		}
	}
}