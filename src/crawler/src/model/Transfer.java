package model;

public class Transfer {
	private Team team;
	private String from;
	private String to;
	private String fee;

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getFee() {
		return fee;
	}

	public void setFee(String string) {
		this.fee = string;
	}

}
