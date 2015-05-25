package crawler;

import model.Player;
import model.Team;
import model.Contract;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.function.Consumer;

public class PlayerCrawler {
    private ArrayList<Consumer<Player>> onPlayerCrawledListeners = new ArrayList<>();

    public void onPlayerCrawled(Consumer<Player> listener) {
        onPlayerCrawledListeners.add(listener);
    }

    protected void emitPlayerCrawled(Player player) {
        for (Consumer<Player> listener : onPlayerCrawledListeners) {
            listener.accept(player);
        }
    }

    public void crawlAllPlayerPages(Collection<Player> players) throws IOException {
        for (Player player : players) {
            crawlPlayerPage(player.getUri().toString(), player);
        }
    }

    public Player crawlPlayerPage(String uri) throws IOException {
        Player player = new Player(new URL(uri), "");

        if (crawlPlayerPage(uri, player)) {
            return player;
        }

        return null;
    }

	public boolean crawlPlayerPage(String uri, Player player) throws IOException {
		LinkedHashSet<Contract> contracts = new LinkedHashSet<>();
        SimpleDateFormat dateParser = new SimpleDateFormat("dd MMM, YY");

        System.err.println("Crawling player page " + uri);

        try {
            Thread.sleep(Utils.HTTP_SLEEP);
			Document doc = Jsoup
					.connect(uri)
					.userAgent(
							"Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0")
					.timeout(Utils.HTTP_TIMEOUT).get();

			// Get all the data by iterating through the player info
			Elements playerInfo = doc.getElementsByTag("tr");
			Iterator<Element> it = playerInfo.iterator();
			// while (it.hasNext()) {
			// Element e = it.next();
			// System.out.println(e.text());
			// System.out.println("----------------");
			// }

            player.setUri(new URL(uri));

			// get player name and number
			Element e = it.next();
			if (e.text().contains(".")) {
                String[] parts = e.text().split("\\. ");
                player.setNumber(Integer.parseInt(parts[0]));
			} else {
				player.setNumber(-1);
			}

			System.out.println("Number: " + player.getNumber());

			// get player position
			e = it.next();
			player.setPosition(e.text().split(" ")[0]);
			System.out.println("Position: " + player.getPosition());

            // Get name
			e = it.next();
            player.setName(e.text().substring(10));
            System.out.println("Name: " + player.getName());

            // get age
            e = it.next();
			if (e.text().length() >= 4) {
				player.setAge(Integer.parseInt(e.text().substring(4,
						e.text().indexOf("(") - 1)));
			} else {
				player.setAge(-1);
			}
			System.out.println("Age: " + player.getAge());

			// get birthday
			if (e.text().indexOf("(") >= 6) {
				player.setBirthday(e.text().substring(
                        e.text().indexOf("(") + 6, e.text().indexOf(")")));
			} else {
				player.setBirthday("");
			}
			System.out.println("Date of Birth: " + player.getBirthday());

			// get height
			e = it.next();
			if (e.text().contains("(")) {
				player.setHeight(e.text().substring(e.text().indexOf("(") + 1,
						e.text().indexOf(")")));
			} else {
				player.setHeight("");
			}
			System.out.println("Height: " + player.getHeight());

			// get weight
			e = it.next();
			if (e.text().contains("(")) {
				player.setWeight(e.text().substring(e.text().indexOf("(") + 1,
						e.text().indexOf(")")));
			} else {
				player.setWeight("");
			}
			System.out.println("Weight: " + player.getWeight());

			// get birthplace
			e = it.next();
			if (e.text().length() >= 15) {
				player.setBirthplace(e.text().substring(15));
			} else {
				player.setBirthplace("");
			}
			System.out.println("Birthplace: " + player.getBirthplace());

			// get nationality
			e = it.next();
			if (e.text().length() >= 12) {
				player.setNationality(e.text().substring(12));
			} else {
				player.setNationality("");
			}
			System.out.println("Nationality: " + player.getNationality());

			// get date signed
			e = it.next();
			if (e.text().length() >= 12) {
				player.setDateSigned(e.text().substring(12));
			} else {
				player.setDateSigned("");
			}
			System.out.println("Date Signed: " + player.getDateSigned());

			// get fee
			e = it.next();
			if (e.text().length() >= 4) {
				player.setFee(e.text().substring(4));
			} else {
				player.setFee("");
			}
			System.out.println("Fee: " + player.getFee());

			// Get transfer history
			it.next();
			it.next();
			e = it.next();
			System.out.println("Transfer History of " + player.getName());
			do {
				Contract contract = new Contract();

				// get team
				Elements links = e.select("a[href*=/teams/team.sd?team_id]");
				for (Element link : links) {
					contract.setTeam(new Team(new URL(link.attr("abs:href")), Utils
							.trim(link.text(), 35)));
				}

				System.out.println("\tTeam: " + contract.getTeam().getName());

				// get date from
				String from = Utils.trim(
						e.text().substring(e.text().indexOf(",") - 6), 11);
//				System.out.println("\tDate Joined: " + from);
				contract.setFrom(dateParser.parse(from));

				// get date to (empty if actual club)
				String to = Utils.trim(
						e.text().substring(e.text().lastIndexOf(", ") - 6), 11);
				if (to.equals(from)) {
					contract.setTo(null);
				} else {
					contract.setTo(dateParser.parse(to));
				}
//				System.out.println("\tDate Left: " + contract.getTo());

				if (e.text().contains("Loan")) {
					contract.setFee("Loan");
//					System.out.println("\tFee: Loan");
				} else {
					contract.setFee("Signed");
//					System.out.println("\tFee: Signed");
				}
				System.out.println("---");
				contracts.add(contract);

				e = it.next();

			} while (!e.text().startsWith("Totals"));

			player.setContracts(contracts);

            emitPlayerCrawled(player);

            return true;

        } catch (InterruptedException e) {
            return false;
        } catch (ParseException e) {
            System.err.println("Invalid date format");
            e.printStackTrace();
        }

        return false;
    }

	public static void main(String[] args) {
		PlayerCrawler pc = new PlayerCrawler();
		// Player p = new Player(
		// "http://www.soccerbase.com/players/player.sd?player_id=46629",
		// "Brad Guzan");

        try {
            pc.crawlPlayerPage("http://www.soccerbase.com/players/player.sd?player_id=39937");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
