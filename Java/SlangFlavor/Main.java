import java.io.*;
import java.util.*;

public class Main {

	public static void main(String[] args) throws IOException {

		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file)); 
		String line;

		String[] slang = {
			", yeah!",
			", this is crazy, I tell ya.",
			", can U believe this?",
			", eh ?",
			", aw yea.",
			", yo. ",
			"? No way!",
			". Awesome!"
		};

		while((line = buffer.readLine()) != null) {

			Boolean insertion = false;
			Integer curr_slang = 0;
			String slang_word = "";

			for (char chr : line.toCharArray()) {
				if (!(chr == '.' || chr == '!' || chr == '?')) {
					System.out.print(chr);
				} else if (insertion == false) {
					insertion = true;
					System.out.print(chr);
				} else {
					 slang_word = slang[curr_slang % slang.length];
					 curr_slang++;
					 insertion = false;
					 System.out.print(slang_word);
				}
			}
			System.out.println();
			
		}
	}
}