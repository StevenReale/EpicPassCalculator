package model;

public class Resort {

    private String resortName;
    private Region region;

    public Resort(String resortName, Region region) {
        this.resortName = resortName;
        this.region = region;
    }

    public String getResortName() {
        return resortName;
    }

    public Region getRegion() {
        return region;
    }

}
