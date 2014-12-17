import java.io.*;

public class Main {
	public static void main(String args[]) throws IOException {

			File file = new File(args[0]);
			BufferedReader buffer = new BufferedReader(new FileReader(file));
			String line;

			while((line = buffer.readLine()) != null) {

					line = line.trim();

					String[] parts = line.split("\\|");
					Integer product = 0;
					Integer index = 0;

					parts[0] = parts[0].trim();
					parts[1] = parts[1].trim();

					String[] numbers1 = parts[0].split(" ");
					String[] numbers2 = parts[1].split(" ");

	 
					for(String n: numbers1) {
						Integer num1 = Integer.parseInt(n.trim());
						Integer num2 = Integer.parseInt(numbers2[index].trim());
						product = num1 * num2;
						System.out.print(Integer.toString(product) + " ");
						index++;
					}
					System.out.print("\n");

			}

	}
}