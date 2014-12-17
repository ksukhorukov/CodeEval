import java.io.*;

public class Main {
	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String line;
		while((line = buffer.readLine()) != null) {
			line = line.trim();
			boolean upme = true;
			for(Character elem : line.toCharArray()) {
				if (Character.isLetter(elem)) {
					if (upme) {
						System.out.print(Character.toUpperCase(elem));
						upme = false;
					} else {
						System.out.print(Character.toLowerCase(elem));
						upme = true;
					}
				} else {
					System.out.print(elem);
				}
			}
			System.out.println();
		}
	}
}