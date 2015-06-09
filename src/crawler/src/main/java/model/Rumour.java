package model;

import java.util.Date;

public class Rumour {
	private String name;
	private String team;
	private Date date;
	private int probability;

	public Rumour(String name, String team, Date date, int probability) {
		super();
		this.name = name;
		this.team = team;
		this.date = date;
		this.probability = probability;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getProbability() {
		return probability;
	}

	public void setProbability(int probability) {
		this.probability = probability;
	}

}
