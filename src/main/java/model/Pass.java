package model;

import java.math.BigDecimal;

public class Pass {

    private int passId;
    private String passName;
    private BigDecimal passPrice;

    public Pass () {}

    public Pass(int passId, String passName, BigDecimal passPrice) {
        this.passId = passId;
        this.passName = passName;
        this.passPrice = passPrice;
    }

    public int getPassId() {
        return passId;
    }

    public void setPassId(int passId) {
        this.passId = passId;
    }

    public String getPassName() {
        return passName;
    }

    public void setPassName(String passName) {
        this.passName = passName;
    }

    public BigDecimal getPassPrice() {
        return passPrice;
    }

    public void setPassPrice(BigDecimal passPrice) {
        this.passPrice = passPrice;
    }
}
