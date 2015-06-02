package crawler;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Locale;

import model.Rumour;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class RumourCrawler {
	private LinkedHashSet<Rumour> rumours = new LinkedHashSet<Rumour>();

	public void crawlAllRumourPages(String uri, Date date) {
		String newUri = uri.substring(0);
		int page = 1;
		boolean isDateExceeded = false;
		while (!isDateExceeded && page < 20) {
			try {
				System.out.println("Page " + newUri + " is being crawled...");
				isDateExceeded = crawlRumourPage(newUri, date);
				page++;
				newUri = uri.substring(0);
				newUri += "/page/";
				newUri += Integer.toString(page);
				System.out.println(newUri);
				Thread.sleep(Utils.HTTP_SLEEP);
			} catch (IOException | InterruptedException e) {
				e.printStackTrace();
			}

		}

	}

	public boolean crawlRumourPage(String uri, Date date) throws IOException {
		boolean terminate = false;
		try {
			// Get HTML page from URI
			// Navigate all pages which are newer than the max date
			Document doc = Jsoup
					.connect(uri)
					.userAgent(
							"Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0")
					.timeout(Utils.HTTP_TIMEOUT).get();

			// Get links to all rumours
			Elements adminrowLinks = doc.select("tr[class*=adminrow]");
			for (Element adminrowLink : adminrowLinks) {
				String name = "";
				String team = "";
				Date lastDate;
				int prob = 0;
				boolean valid = false;

				Elements links = adminrowLink
						.select("a[class*=board_titel spielprofil_tooltip]");

				// Get player and team
				for (Element link : links) {
					valid = false;
					System.out.println(link.attr("id"));
					String text = link.attr("title");
					if (text.contains(" to ")) {
						valid = true;
						String[] parts = text.split(" to ");
						name = parts[0];
						team = parts[1].substring(0, parts[1].length() - 1);
						System.out.println(name);
						System.out.println(team);

					}
				}

				if (valid) {
					links = adminrowLink
							.select("td[class*=no-border-links text-center]");

					// Get probability - if ? then -1
					for (Element link : links) {
						if (link.text().equals("?")) {
							prob = -1;
						} else {
							prob = Integer.parseInt(link.text().substring(0,
									link.text().length() - 2));
						}
						System.out.println(prob);
					}

					// Get date of latest rumour
					links = adminrowLink.select("a[href*=forum]");
					DateFormat format = new SimpleDateFormat("MMM dd, yyyy",
							Locale.ENGLISH);
					lastDate = format.parse(links.get(links.size() - 1).text()
							.substring(0, 12));

					if (date.after(lastDate)) {
						terminate = true;
						break;
					}

					System.out.println(lastDate);
					System.out.println();
					rumours.add(new Rumour(name, team, date, prob));

				}
			}

		} catch (IOException e) {
			System.out.println("RumourCrawler failed");
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return terminate;
	}

	public static void main(String[] args) {
		RumourCrawler rc = new RumourCrawler();
		String uri = "http://www.transfermarkt.co.uk/rumourmill/detail/forum/180/ajax/threadList";
		DateFormat format = new SimpleDateFormat("MMM dd, yyyy", Locale.ENGLISH);
		Date date;
		try {
			date = format.parse("May 15, 2015");
			rc.crawlAllRumourPages(uri, date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
