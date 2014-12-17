/* Sample code to read in test cases:
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            // Process line of input Here
        }
    }
}
*/


import java.io.*;

public class Main {
	public static void main(String[] args) throws IOException {

			File file = new File(args[0]);
			BufferedReader buffer = new BufferedReader(new FileReader(file));
      String line;
 			Integer max_length = -1;
			Integer curr_length = -1;
			String max_word = "";

      while ((line = buffer.readLine()) != null) {
        
        line = line.trim();
			
				String[] tokens = line.split(" ");

				max_length = -1;
				curr_length = -1;
				max_word = "";

				for( String token: tokens) {
					curr_length = token.length();
					if ( curr_length > max_length ) {
						max_length = curr_length;
						max_word = token;
					}

				}

				if(max_word.length() > 0) {
					System.out.println(max_word);
				}

			}
	}
}