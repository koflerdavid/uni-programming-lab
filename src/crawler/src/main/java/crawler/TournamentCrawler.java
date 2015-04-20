package crawler;

import model.Team;
import model.Tournament;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.function.Consumer;

public class TournamentCrawler {
    private ArrayList<Consumer<Tournament>> onTournamentCrawledListeners = new ArrayList<>();
    private TeamCrawler teamCrawler;

	public TournamentCrawler(TeamCrawler teamCrawler) {
        this.teamCrawler = teamCrawler;
	}

	public void crawlAllTournamentPages(Collection<Tournament> tournaments) {
        tournaments.forEach(this::crawlTournamentPage);
	}

    public void onTournamentCrawled(Consumer<Tournament> listener) {
        onTournamentCrawledListeners.add(listener);
    }

    protected void emitTournamentCrawled(Tournament tournament) {
        for (Consumer<Tournament> listener : onTournamentCrawledListeners) {
            listener.accept(tournament);
        }
    }

	public void crawlTournamentPage(Tournament tournament) {
		String uri = tournament.getUri();
		System.err.println("Crawling tournament: " + tournament.getName());
		LinkedHashSet<Team> teams = new LinkedHashSet<Team>();

		try {
			Thread.sleep(Utils.HTTP_SLEEP);
			// Get HTML page from URI
			Document doc = Jsoup
					.connect(uri)
					.userAgent(
							"Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0")
					.timeout(Utils.HTTP_TIMEOUT).get();

			// Get name of the tournament
			// tournamentName = doc.select("h1").text();
			// System.out.println(tournamentName);

			// Get all links associated to the teams of the tournament
			Elements links = doc.select("a[href*=/teams/team.sd?team_id]");
			System.out.println("Teams:");
			for (Element link : links) {
				// Utils.println(" * a: <%s>  (%s)", link.attr("abs:href"),
				// Utils.trim(link.text(), 35));
				teams.add(new Team(link.attr("abs:href"), link.text()));
			}
			for (Team team : teams) {
				System.out.println(team.getName() + "\t" + team.getUri());
			}

            emitTournamentCrawled(tournament);

		} catch (IOException e) {
			System.err.println("TournamentCrawler failed");
			e.printStackTrace();
		} catch (InterruptedException e) {
			System.err.println("Sleep failed");
			e.printStackTrace();
		}

		// Crawl squads for every tournament
		tournament.setTeams(teams);
		teamCrawler.crawlAllTeamPages(teams);
	}

	public static void main(String[] args) {
		TournamentCrawler tc = new TournamentCrawler(new TeamCrawler(new PlayerCrawler()));
		Tournament tournament = new Tournament(
				"http://www.soccerbase.com/tournaments/tournament.sd?comp_id=1",
				"Premier League");
		tc.crawlTournamentPage(tournament);
	}
}