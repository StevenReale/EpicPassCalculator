package model;

public class Resort {

    private int resortId;
    private String resortName;
    private int regionId;
    private int tier;

    public Resort(int resortId, String resortName, int regionId, int tier) {
        this.resortId = resortId;
        this.resortName = resortName;
        this.regionId = regionId;
        this.tier = tier;
    }

    public int getResortId() {
        return resortId;
    }

    public void setResortId(int resortId) {
        this.resortId = resortId;
    }

    public void setResortName(String resortName) {
        this.resortName = resortName;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public int getTier() {
        return tier;
    }

    public void setTier(int tier) {
        this.tier = tier;
    }

    public String getResortName() {
        return resortName;
    }

    public String getRegion() {
        return region;
    }
}
