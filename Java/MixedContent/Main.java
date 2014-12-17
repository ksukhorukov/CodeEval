import java.io.*;
import java.util.*;

public class Main {

	public static boolean isWord(String part) {
		part = part.trim();
		for(Character chr : part.toCharArray()) {
			if ( !Character.isLetter(chr) ) {
				return false;
			}
		}
		return true;
	}

	public static String concatAll(ArrayList<String> arr) {
		String result = "";
		for(String elem: arr) {
			result = result + elem + ",";
		}
		if (result.length() > 0) {
			return result.substring(0, result.length() - 1 );
		} else {
			return result;
		}
		
	}

  
	public static void main(String[] args) throws IOException {

		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));

		String line;

		while((line = buffer.readLine()) != null) {

			line = line.trim();
			String[] parts = line.split(",");
			
			ArrayList<String> words = new ArrayList<String>();
			ArrayList<String> numbers = new ArrayList<String>();
			
			for(String part : parts) {
				if (isWord(part)) {
					words.add(part);
				} else {
					numbers.add(part);
				}
			}

			String _words_out = concatAll(words);
			String _numbers_out = concatAll(numbers);

			if (_words_out.length() > 0) {
				System.out.print(_words_out);
				if (_numbers_out.length() > 0) {
					System.out.print("|" + _numbers_out);
					System.out.println();
				}
			} else {
				System.out.println(_numbers_out);
			}

		}

	}
}