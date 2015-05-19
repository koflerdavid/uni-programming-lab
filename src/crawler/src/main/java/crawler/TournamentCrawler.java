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
import java.util.List;
import java.util.function.Consumer;

public class TournamentCrawler {
    private ArrayList<Consumer<Tournament>> onTournamentCrawledListeners = new ArrayList<>();

    public List<Tournament> crawlAllTournamentPages(Collection<Tournament> tournaments) throws IOException {
        ArrayList<Tournament> failed = new ArrayList<>();

        for (Tournament tournament : tournaments) {
            try {
                crawlTournamentPage(tournament.getUri(), tournament);
            } catch (IOException e) {
                e.printStackTrace();
                failed.add(tournament);
            }
        }

        return failed;
    }

    public void onTournamentCrawled(Consumer<Tournament> listener) {
        onTournamentCrawledListeners.add(listener);
    }

    protected void emitTournamentCrawled(Tournament tournament) {
        for (Consumer<Tournament> listener : onTournamentCrawledListeners) {
            listener.accept(tournament);
        }
    }

    public Tournament crawlTournamentPage(String uri) throws IOException {
        Tournament tournament = new Tournament(uri, "");
        if (crawlTournamentPage(uri, tournament)) {
            return tournament;
        }

        return null;
    }

	public boolean crawlTournamentPage(String uri, Tournament tournament) throws IOException {
        System.err.println("Crawling tournament " + uri);
		LinkedHashSet<Team> teams = new LinkedHashSet<>();

		try {
			Thread.sleep(Utils.HTTP_SLEEP);
			// Get HTML page from URI
			Document doc = Jsoup
					.connect(uri)
					.userAgent(
							"Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0")
					.timeout(Utils.HTTP_TIMEOUT).get();

            tournament.setUri(uri);
            tournament.setName(doc.getElementsByTag("h1").text());

            System.out.println("Name: " + tournament.getName());

			// Get all links associated to the teams of the tournament
			Elements links = doc.select("a[href*=/teams/team.sd?team_id]");
			System.out.println("Teams:");
			for (Element link : links) {
				// Utils.println(" * a: <%s>  (%s)", link.attr("abs:href"),
				// Utils.trim(link.text(), 35));
                if (!link.text().isEmpty()) {
                    final Team team = new Team(link.attr("abs:href"), link.text());
                    team.getTournaments().add(tournament);
                    teams.add(team);
                }
			}

			for (Team team : teams) {
				System.out.println(team.getName() + "\t" + team.getUri());
			}

            tournament.setTeams(teams);

            emitTournamentCrawled(tournament);

		} catch (InterruptedException e) {
            return false;
		}

        return true;
	}

	public static void main(String[] args) {
        TeamCrawler teamCrawler = new TeamCrawler();
		TournamentCrawler tc = new TournamentCrawler();
//        tc.onTournamentCrawled((Tournament tournament) -> teamCrawler.crawlAllTeamPages(tournament.getTeams()));
        try {
            tc.crawlTournamentPage("http://www.soccerbase.com/tournaments/tournament.sd?comp_id=78");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
