package crawler;

import model.Player;
import model.Team;
import model.Trainer;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.function.Consumer;

public class TeamCrawler {
    private ArrayList<Consumer<Team>> onTeamCrawledListeners = new ArrayList<>();

    public void crawlAllTeamPages(Collection<Team> teams) {
        teams.forEach(this::crawlTeamPage);
	}

    public void onTeamCrawled(Consumer<Team> listener) {
        onTeamCrawledListeners.add(listener);
    }

    protected void emitTeamCrawled(Team team) {
        for (Consumer<Team> listener : onTeamCrawledListeners) {
            listener.accept(team);
        }
    }

	public void crawlTeamPage(Team team) {
		String uri = team.getUri();
		System.err.println("Crawling team page: " + team.getName());

		try {
			Thread.sleep(Utils.HTTP_SLEEP);
			// Get HTML page from URI
			Document doc = Jsoup
					.connect(uri)
					.userAgent(
							"Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0")
					.timeout(Utils.HTTP_TIMEOUT).get();

            String[] parts = doc.getElementsByTag("h1").text().split(" Club details", 2);
            team.setName(parts[0]);

			// Get all the data by iterating through the club info box
			Elements clubInfo = doc.getElementsByTag("tr");
			Iterator<Element> it = clubInfo.iterator();

			// Get nickname
			it.next();
			Element e = it.next();
			if (e.text().length() >= 14) {
				team.setNickname(e.text().substring(14));
			} else {
				team.setNickname("");
			}

            System.out.println("Name: " + team.getName());
			System.out.println("Nickname: " + team.getNickname());

			// Get ground name
			e = it.next();
			if (e.text().indexOf("CAPACITY") > 7) {
				team.setGround(e.text().substring(7,
						e.text().indexOf("CAPACITY") - 1));
			} else {
				team.setGround(null);
			}

			System.out.println("Ground: " + team.getGround());

			// Get Manager name + info
			e = it.next();
			if (e.text().indexOf("TEAM") > 8) {
				team.setTrainer(new Trainer(e.text().substring(8,
						e.text().indexOf("TEAM") - 1)));
			} else {
				team.setTrainer(null);
			}

            if (team.getTrainer() != null) {
                System.out.println("Trainer: " + team.getTrainer().getName());
            }

            it.next();

			do {
				// Manager info
				e = it.next();
			} while (!e.text().startsWith("Year Formed"));

			// Get Year formed
			if (e.text().length() >= 12) {
				team.setYearFormed(Integer.parseInt(e.text().substring(12)));
			} else {
				team.setYearFormed(-1);
			}
			System.out.println("Year Formed: " + team.getYearFormed());

			// Get Chairman
			e = it.next();
			if (e.text().length() >= 9) {
				team.setChairman(e.text().substring(9));
			} else {
				team.setChairman("");
			}
			System.out.println("Chairman: " + team.getChairman());

			// Get Address
			e = it.next();
			if (e.text().length() >= 8) {
				team.setAddress1(e.text().substring(8));
			} else {
				team.setAddress1("");
			}
			System.out.println("Address:");
			System.out.println("\t" + team.getAddress1());
			e = it.next();
			if (e.text().length() >= 2) {
				team.setAddress2(e.text().substring(2));
			} else {
				team.setAddress2("");
			}
			System.out.println("\t" + team.getAddress2());
			e = it.next();
			if (e.text().length() >= 2) {
				team.setAddress3(e.text().substring(2));
			} else {
				team.setAddress3("");
			}
			System.out.println("\t" + team.getAddress3());

			// Get Post code
			e = it.next();
			if (e.text().length() >= 10) {
				team.setPostCode(e.text().substring(10));
			} else {
				team.setPostCode("");
			}
			System.out.println("Post Code: " + team.getPostCode());

			// Get Website
			e = it.next();
			if (e.text().length() >= 8) {
				team.setWebsite(e.text().substring(8));
			} else {
				team.setWebsite("");
			}
			System.out.println("Website: " + team.getWebsite());

			// Get all links associated to the players of the team
			Elements links = doc
					.select("a[href*=/players/player.sd?player_id]");
			System.out.println(team.getName());
			System.out.println("Players:");

            LinkedHashSet<Player> players = new LinkedHashSet<>();

			for (Element link : links) {
				// Utils.println(" * a: <%s>  (%s)", link.attr("abs:href"),
				// Utils.trim(link.text(), 35));
                final Player player = new Player(link.attr("abs:href"), link.text());
                player.setTeam(team);
                players.add(player);
			}

			for (Player player : players) {
				System.out.println(player.getName() + "\t" + player.getUri());
			}

            team.setPlayers(players);

            emitTeamCrawled(team);

		} catch (IOException e) {
			System.err.println("TeamCrawler failed");
			e.printStackTrace();
		} catch (InterruptedException e) {
			System.err.println("Sleep failed");
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		TeamCrawler tc = new TeamCrawler();
		Team t = new Team(
				"http://www.soccerbase.com/teams/team.sd?team_id=536",
				"Aston Villa");
		tc.crawlTeamPage(t);
	}
}
