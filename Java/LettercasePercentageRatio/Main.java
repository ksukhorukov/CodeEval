import java.io.*;
import java.util.*;
import java.text.DecimalFormat;

public class Main {
	
	public static double RoundTo2Decimals(double val) {
     DecimalFormat df2 = new DecimalFormat("###.##");
     return Double.valueOf(df2.format(val));
	}

	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String line;
		while((line = buffer.readLine()) != null) {

			Integer lowcase = 0;
			Integer upcase = 0; 
			Integer length = 0;

			String ratio_low, ratio_up;

			line = line.trim();
			for(Character elem: line.toCharArray()) {
				if ( Character.isUpperCase(elem) ) {
					upcase++;
				} else {
					lowcase++;
				}
			}

			length = line.length();
			ratio_low = String.valueOf( RoundTo2Decimals ( (double) lowcase / (double)length * 100.0) );
			ratio_up = String.valueOf( RoundTo2Decimals ( (double) upcase / (double)length  * 100.0) );

			System.out.println("lowercase: " + ratio_low + " uppercase: " + ratio_up);
		}
	}
}