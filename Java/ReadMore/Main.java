import java.io.*;

public class Main {
	public static void main(String[] args) throws IOException {
			File file = new File(args[0]);
			BufferedReader buffer = new BufferedReader(new FileReader(file));

			String text = "";

			while((text = buffer.readLine()) != null) {
			
				Integer length = text.length();

				if ( length <= 55 ) {
					System.out.println(text);
				} else {
					String readmore = text.substring(0, 39);	
					readmore = readmore.trim() + "... <Read More>";	
					System.out.println(readmore);
				}
			}
	}
}