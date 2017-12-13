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
public class MobileValidation {
 
    // Has the user entered a customername 
        public static boolean validateMobileOS(String mobileOS, 
                                         MobileErrorList errors) {
        if ("".equals(mobileOS.trim())) {
            errors.setMobileOSMissing(true);
            return false;
        }
        else {
            return true;
        }
    }
        
    // Has the user selected a mobilebrand from the list?
    // If the mobilebrand has no value, or is still "choose", then they haven't
    public static boolean validateMobilebrand(String mobilebrand, 
                                         MobileErrorList errors) {
        if (mobilebrand == null || mobilebrand.equals("choose")) {
            errors.setMobilebrandMissing(true);
            return false;
        }
        else {
            return true;
        }
    }
    
    public static boolean validateMobilemodel(String mobilemodel, 
                                         MobileErrorList errors) {
        if (mobilemodel == null || mobilemodel.equals("choose")) {
            errors.setMobilemodelMissing(true);
            return false;
        }
        else {
            return true;
        }
    }
    
    // Has the user selected one of the radio buttons?
    // If not, the value will be null.
    public static boolean validateMobileMemory(String mobilememory, 
                                          MobileErrorList errors) {
        if (mobilememory == null) {
            errors.setMobilememoryMissing(true);
            return false;
        }
        else {
            return true;
        }
    }
    
     // Did the user enter a IMEI number? If so,
    // has the user entered a IMEI number in  legal format?
    public static boolean validateIMEI(String IMEI, MobileErrorList errors) {        
        // Check whether any number given
        if ("".equals(IMEI.trim())) {
            errors.setIMEIMissing(true);
            return false;
        }     
        // We compare the string to a regular expression which 
        // specifies the value must be 15 digits.
        String numRegEx = "\\d{15}";
        IMEI = IMEI.trim();
        if (!IMEI.matches(numRegEx)) {
            errors.setIMEInotvalid(true);
            return false;
            }
        else {
            return true;
        }      
    }
    
    public static boolean validateMobileprice(String mobileprice, MobileErrorList errors) {
        mobileprice = mobileprice.trim();
        
        
        // We first compare the trimmed values to the empty string, and create
        // an Number of Missing error if either is empty.
        if ("".equals(mobileprice.trim())) {
            errors.setMobilepriceMissing(true);
            return false;
        }
        else {
            
            // Otherwise, we attempt to parse the values to integers.
            try {
                double mobileprices = Double.parseDouble(mobileprice.trim());
                
                
                // If the values are integers, first make sure they are positive
                // (can't have negative hours).
                if (mobileprices < 0) {
                    errors.setMobilepricetoolow(true);
                    return false;
                }
                
              
            }
            
            // If a NumberFormatException error occurs, the user has put non-integer
            // values into one of the fields, so create an hoursNotNumerc error.
            catch (NumberFormatException ex) {
                errors.setMobilepricenotnumeric(true);
                return false;
            }
        } 
        return true;
    }
    
    
    
    
    
    
    
}
