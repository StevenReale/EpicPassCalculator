package model;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

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
