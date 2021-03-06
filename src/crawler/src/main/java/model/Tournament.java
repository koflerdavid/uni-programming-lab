package model;

import java.net.URL;
import java.util.LinkedHashSet;

public class Tournament {
    private URL uri;
    private String name;
    private String country;
    private LinkedHashSet<Team> teams;

    public Tournament(URL uri, String name, LinkedHashSet<Team> teams) {
        this.uri = uri;
        this.name = name;
        setTeams(teams);
    }

    public Tournament(URL uri, String name) {
        this(uri, name, null);
    }

    public URL getUri() {
        return uri;
    }

    public void setUri(URL uri) {
        this.uri = uri;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public LinkedHashSet<Team> getTeams() {
        return teams;
    }

    public void setTeams(LinkedHashSet<Team> teams) {
        this.teams = teams != null ? teams : new LinkedHashSet<>();
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((name == null) ? 0 : name.hashCode());
        result = prime * result + ((uri == null) ? 0 : uri.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Tournament other = (Tournament) obj;
        if (name == null) {
            if (other.name != null)
                return false;
        } else if (!name.equals(other.name))
            return false;
        if (uri == null) {
            if (other.uri != null)
                return false;
        } else if (!uri.equals(other.uri))
            return false;
        return true;
    }
}
