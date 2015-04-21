package model;

import java.util.Date;

public class Transfer {
	private Team team;
	private Date from;
	private Date to;
	private String fee;

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public Date getFrom() {
		return from;
	}

	public void setFrom(Date from) {
		this.from = from;
	}

	public Date getTo() {
		return to;
	}

	public void setTo(Date to) {
		this.to = to;
	}

	public String getFee() {
		return fee;
	}

	public void setFee(String string) {
		this.fee = string;
	}

}
