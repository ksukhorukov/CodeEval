import java.io.*;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Main {
	public static void main(String[] args) throws IOException {

			File file = new File(args[0]);
			BufferedReader buffer = new BufferedReader(new FileReader(file));
			String line = "";

			while ((line = buffer.readLine()) != null) {

				line = line.trim();
				String[] times = line.split(" ");

				String dateStart = times[0];
				String dateStop = times[1];

				SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");

				Date d1 = null;
				Date d2 = null;

				try {

					d1 = format.parse(dateStart);
					d2 = format.parse(dateStop);

					long diff = Math.abs(d2.getTime() - d1.getTime());
					
					long diffSeconds = diff / 1000 % 60;
					long diffMinutes = diff / (60 * 1000) % 60;
					long diffHours = diff / (60 * 60 * 1000) % 24;


					String finalDiff = Long.toString(diffHours) + ':' + Long.toString(diffMinutes) + ':' + Long.toString(diffSeconds);
					System.out.println(finalDiff);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
	}
}