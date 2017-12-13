/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mobiles;

/**
 *
 * @author maninder
 */
public class MobileErrorList {
    private boolean mobileOSMissing = false;
    private boolean mobilebrandMissing = false;
    private boolean mobilemodelMissing = false;
    private boolean mobilememoryMissing = false;
    private boolean IMEIMissing = false;
    private boolean IMEInotvalid = false;
    private boolean mobilepriceMissing = false;
    private boolean mobilepricenotnumeric = false;
    private boolean mobilepricetoolow = false;

    public boolean isMobilepricenotnumeric() {
        return mobilepricenotnumeric;
    }

    public void setMobilepricenotnumeric(boolean mobilepricenotnumeric) {
        this.mobilepricenotnumeric = mobilepricenotnumeric;
    }

    public boolean isMobilepricetoolow() {
        return mobilepricetoolow;
    }

    public void setMobilepricetoolow(boolean mobilepricetoolow) {
        this.mobilepricetoolow = mobilepricetoolow;
    }

    public boolean isMobileOSMissing() {
        return mobileOSMissing;
    }

    public void setMobileOSMissing(boolean mobileOSMissing) {
        this.mobileOSMissing = mobileOSMissing;
    }

    public boolean isMobilebrandMissing() {
        return mobilebrandMissing;
    }

    public void setMobilebrandMissing(boolean mobilebrandMissing) {
        this.mobilebrandMissing = mobilebrandMissing;
    }

    public boolean isMobilemodelMissing() {
        return mobilemodelMissing;
    }

    public void setMobilemodelMissing(boolean mobilemodelMissing) {
        this.mobilemodelMissing = mobilemodelMissing;
    }

    public boolean isMobilememoryMissing() {
        return mobilememoryMissing;
    }

    public void setMobilememoryMissing(boolean mobilememoryMissing) {
        this.mobilememoryMissing = mobilememoryMissing;
    }

    public boolean isIMEIMissing() {
        return IMEIMissing;
    }

    public void setIMEIMissing(boolean IMEIMissing) {
        this.IMEIMissing = IMEIMissing;
    }

    public boolean isIMEInotvalid() {
        return IMEInotvalid;
    }

    public void setIMEInotvalid(boolean IMEInotvalid) {
        this.IMEInotvalid = IMEInotvalid;
    }
    
    public boolean isMobilepriceMissing() {
        return mobilepriceMissing;
    }

    public void setMobilepriceMissing(boolean mobilepriceMissing) {
        this.mobilepriceMissing = mobilepriceMissing;
    }
    
        
}

