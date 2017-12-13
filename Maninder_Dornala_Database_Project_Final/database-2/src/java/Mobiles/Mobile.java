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
public class Mobile {
    private String mobileOS = "";
    private String mobilebrand = "";
    private String mobilemodel = "";
    private String mobilememory = ""; 
    private String IMEI = "";
    private double mobileprice = 0;
    /**
     * @param mobilebrand;
     * @param mobilemodel
     * @param mobilename
     * @param mobilememory
     * @param mobileprice*/
    
    public Mobile(String mobileOS, String mobilebrand, String mobilemodel,  
                 String mobilememory, String IMEI, double mobileprice) {
        
        this.mobileOS = mobileOS;
        this.mobilebrand = mobilebrand;
        this.mobilemodel = mobilemodel;
        this.mobilememory = mobilememory;
        this.IMEI = IMEI;
        this.mobileprice = mobileprice;
        /***/
    }  
        
    public Mobile() {
        
    }

    public String getMobileOS() {
        return mobileOS;
    }

    public void setMobileOS(String mobileOS) {
        this.mobileOS = mobileOS;
    }

    public String getMobilebrand() {
        return mobilebrand;
    }

    public void setMobilebrand(String mobilebrand) {
        this.mobilebrand = mobilebrand;
    }

    public String getMobilemodel() {
        return mobilemodel;
    }

    public void setMobilemodel(String mobilemodel) {
        this.mobilemodel = mobilemodel;
    }

    public String getMobilememory() {
        return mobilememory;
    }

    public void setMobilememory(String mobilememory) {
        this.mobilememory = mobilememory;
    }

    public String getIMEI() {
        return IMEI;
    }

    public void setIMEI(String IMEI) {
        this.IMEI = IMEI;
    }

    public double getMobileprice() {
        return mobileprice;
    }

    public void setMobileprice(double mobileprice) {
        this.mobileprice = mobileprice;
    }
    
    
    }

    