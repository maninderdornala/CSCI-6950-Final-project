 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mobiles;

import java.sql.*;
import java.util.ArrayList;
import java.util.*;

/**
 *
 * @author maninder
 */
public class MobileList {
    
    // Internally, a MobileList is an array list of Mobile objects
    private ArrayList<Mobile> mobiles;
    
    public MobileList() {
        mobiles = new ArrayList();
        }
    
    // Return the list of mobiles for iteration in a view
    public ArrayList getMobiles() {
        return mobiles;
    }
    
     // Get the existing mobiles from the database and add them to the list
    public void loadMobiles() {
        Connection connection = null;
        Statement statement = null;
        ResultSet results = null;
        try {
            // Load the appropriate database driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            // Connect to the database through that driver, using the 
            // database url and the username and password
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/advanceddatabase", "root", "Mani@2511");
        }
        catch (SQLException ex) {
            System.out.println("Connection failed!");
        }
        catch (Exception ex) {
            System.out.println("No driver!");
        }
        
        try {
            // Create and execute query statement for all in Mobiles table,
            // storing links to matching records in ResultSet object results.
            statement = connection.createStatement();
            results = statement.executeQuery("select * from mobiles");
            
            // Loop to next record in results, while there is a next record.
            while (results.next()) {
                
                // Get each field of current record (as appropriate type)
                String mobileOS = results.getString("mobileOS");
                String mobilebrand = results.getString("mobilebrand");
                String mobilemodel = results.getString("mobilemodel");
                String mobilememory = results.getString("mobilememory");
                String IMEI = results.getString("IMEI");
                Double mobileprice = results.getDouble("mobileprice");
                
                
                // Construct a new mobile object from that data, and add to list
                Mobile c = new Mobile(mobileOS, mobilebrand, mobilemodel, mobilememory, 
                                      IMEI, mobileprice ); 
                mobiles.add(c);
            }
        }        
        catch (SQLException ex) {
            System.out.println("Query failed!");
        }
    }
    
    // Save new mobile to database
    public static void saveMobile(String mobileOS, String mobilebrand, String mobilemodel, 
            String mobilememory, String IMEI, String mobileprice ) {
        
                
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet results = null;
        try {
            // Load the appropriate database driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            // Connect to the database through that driver, using the 
            // database url and the username and password
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/advanceddatabase", "root", "Mani@2511");
            }
        catch (SQLException ex) {
            System.out.println("Connection failed!");
        }
        catch (Exception ex) {
            System.out.println("No driver!");
        }
        
        try {
            
            // Create a "template" for the SQL insert statement, with ?
            // in place of the values we will actually insert
            String template = "insert into mobiles"
                    + "(mobileOS, mobilebrand, mobilemodel, mobilememory, IMEI, mobileprice )"
                    + "values (?, ?, ?, ?, ?, ?)";
            
            // Pass this template to the database server via the connection
            statement = connection.prepareStatement(template);
            
            // Replace the question marks with the actual values
            statement.setString(1, mobileOS);
            statement.setString(2, mobilebrand);
            statement.setString(3, mobilemodel);
            statement.setString(4, mobilememory);
            statement.setString(5, IMEI);
            statement.setDouble(6, Double.parseDouble(mobileprice));
            
            // Exectue the final SQL statement on the database.
            statement.executeUpdate();
        }      
        catch (SQLException ex) {
            System.out.println("Query failed!");
        }
        
    }
    
    
    
    // Construct a new Mobile object directly from parameters read in from the form.
    // This requires converting ht emin and max hours to integers and the project
    // to a Boolean value.
    public void add(String mobileOS, String mobilebrand, String mobilemodel,  
                 String mobilememory, String IMEI, double mobileprice ) {
        Mobile c = new Mobile(mobileOS, mobilebrand, mobilemodel, mobilememory, 
                                IMEI, Double.parseDouble("mobileprice"));
        mobiles.add(c);
    }
    
    // Take an already existing Mobile as a parameter (possibly already in the
    // array of all mobiles) and add it to the list.
    public void add(Mobile c) {
        mobiles.add(c);
    }
    
    public int getSize() {
        return mobiles.size();
    }
    
    // Search the list for the mobile withthe given mobilebrand, mobilemodel and mobilememory
    // and return  that Mobile object.
    public Mobile getMobile(String mobilebrand, String mobilemodel, String mobilememory, String IMEI) {
        for (int i = 0; i < mobiles.size(); i++) {
            Mobile c = mobiles.get(i);
            if (mobilebrand.equals(c.getMobilebrand()) && 
                mobilemodel.equals(c.getMobilemodel()) &&
                mobilememory.equals(c.getMobilememory())&&
                    IMEI.equals(c.getIMEI())) {
                return c;
            }
        }
        return null;
    }
    
    // Remove mobile with given mobilebrand, mobilemodel and mobilememory from list,
    // using search method to find it first
    public void drop(String mobilebrand, String mobilemodel, String mobilememory, String IMEI) {
        Mobile c = getMobile(mobilebrand, mobilemodel, mobilememory, IMEI);
        mobiles.remove(c);
    }
    
    // Get the legal mobile mobilebrands as an array
    public final String[] mobilebrands = new String[]{"Samsung", "Apple", "Google"};
    public String[] getMobilebrands() {
        return mobilebrands;
    }
    public final String[] mobilememories = new String[]{"32GB", "64GB", "128GB"};
    public String[] getMobilememories() {
        return mobilememories;
    }
    public final String[] mobilemodels = new String[]{"Galaxy S10", "Galaxy S9", "Iphone 7", "Iphone 8", "Iphone X",
                                                        "Pixel XL", "Pixel 2 XL","Nexus 9" };
    public String[] getMobilemodels() {
        return mobilemodels;
    }
    
}

    
    


