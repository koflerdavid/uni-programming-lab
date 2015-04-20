package crawler;

import java.io.IOException;
import java.util.HashSet;
import java.util.LinkedHashSet;

import model.Tournament;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class MainCrawler {
    private TournamentCrawler tournamentCrawler;

    public MainCrawler(TournamentCrawler tournamentCrawler) {
        this.tournamentCrawler = tournamentCrawler;
    }

    public HashSet<Tournament> crawlMainPage(String uri) {
		LinkedHashSet<Tournament> tournaments = new LinkedHashSet<Tournament>();

		try {
			// Get HTML page from URI
			Document doc = Jsoup
					.connect(uri)
					.userAgent(
							"Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0")
					.timeout(Utils.HTTP_TIMEOUT).get();

			// Get all links associated to tournaments
			Elements links = doc
					.select("a[href*=/tournaments/tournament.sd?comp_id]");
			Utils.println("\nTournaments: (%d)", links.size());
			for (Element link : links) {
				// Utils.println(" * a: <%s>  (%s)", link.attr("abs:href"),
				// Utils.trim(link.text(), 35));
				tournaments.add(new Tournament(link.attr("abs:href"), link
						.text()));
			}

			for (Tournament tournament : tournaments) {
				System.out.println(tournament.getName() + "\t"
						+ tournament.getUri());
			}

		} catch (IOException e) {
			System.out.println("TournamentCrawler failed");
			e.printStackTrace();
		}

		// Crawl all single tournaments
		tournamentCrawler.crawlAllTournamentPages(tournaments);

		return tournaments;
	}

	public static void main(String[] args) {
		MainCrawler mc = new MainCrawler(new TournamentCrawler(new TeamCrawler(new PlayerCrawler())));
		String uri = "http://www.soccerbase.com/tournaments/home.sd";
		mc.crawlMainPage(uri);
	}
}
