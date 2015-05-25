package importers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipFile;

class ZipImporterDataFile {
    private InputStream teamsInputStream;
    private InputStream playersInputStream;
    private InputStream transfersInputStream;
    private InputStream locationsInputStream;
    private ZipFile zipFile;

    public ZipImporterDataFile(final String filename) throws IOException {
        final ZipFile zipFile = new ZipFile(new File(filename), ZipFile.OPEN_READ);

        setZipFile(zipFile);
        setLocationsInputStream(zipFile.getInputStream(zipFile.getEntry("locs.dat")));
        setPlayersInputStream(zipFile.getInputStream(zipFile.getEntry("players.dat")));
        setTeamsInputStream(zipFile.getInputStream(zipFile.getEntry("teams.dat")));
        setTransfersInputStream(zipFile.getInputStream(zipFile.getEntry("teamtransfers.dat")));
    }

    public InputStream getTeamsInputStream() {
        return teamsInputStream;
    }

    public void setTeamsInputStream(InputStream teamsInputStream) {
        this.teamsInputStream = teamsInputStream;
    }

    public InputStream getPlayersInputStream() {
        return playersInputStream;
    }

    public void setPlayersInputStream(InputStream playersInputStream) {
        this.playersInputStream = playersInputStream;
    }

    public InputStream getTransfersInputStream() {
        return transfersInputStream;
    }

    public void setTransfersInputStream(InputStream transfersInputStream) {
        this.transfersInputStream = transfersInputStream;
    }

    public InputStream getLocationsInputStream() {
        return locationsInputStream;
    }

    public void setLocationsInputStream(InputStream locationsInputStream) {
        this.locationsInputStream = locationsInputStream;
    }

    public ZipFile getZipFile() {
        return zipFile;
    }

    public void setZipFile(ZipFile zipFile) {
        this.zipFile = zipFile;
    }
}
