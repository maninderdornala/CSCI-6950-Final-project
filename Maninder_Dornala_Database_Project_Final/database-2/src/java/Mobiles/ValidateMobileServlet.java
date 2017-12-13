/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mobiles;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
/**
 *
 * @author maninder
 */
public class ValidateMobileServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String nextPage = "/MobileAdded.jsp";
        
        // Read in all form parameters
        String mobileOS = request.getParameter("mobileOS");
        String mobilebrand = request.getParameter("mobilebrand");
        String mobilemodel = request.getParameter("mobilemodel");
        String mobilememory = request.getParameter("mobilememory");
        String IMEI = request.getParameter("IMEI");
        String mobileprice = request.getParameter("mobileprice");
        
        // Create a new object for all of the error messages we might need
        // to send back to the JSP
        MobileErrorList errors = new MobileErrorList();
        
        // Call each of the validaton methods, keepin track of what they return
        // so we know if anything  went wrong. Pass the MobileErrorList to each
        // so it can be modified if an error is found by that method.
        
        boolean isMobileOSValid = MobileValidation.validateMobileOS(mobileOS, errors);
        boolean isMobilebrandValid = MobileValidation.validateMobilebrand(mobilebrand, errors);
        boolean isMobilemodelValid = MobileValidation.validateMobilemodel(mobilemodel, errors);
        boolean isMobilememoryValid = MobileValidation.validateMobileMemory(mobilememory, errors);
        boolean isIMEIValid = MobileValidation.validateIMEI(IMEI, errors);
        boolean isMobilepriceValid = MobileValidation.validateMobileprice(mobileprice, errors);
        // If no errors wer found, create the mobile.
        // Otherwise, redirect back to the input page.
        if (isMobileOSValid && isMobilebrandValid && isMobilemodelValid && isMobilememoryValid
                && isIMEIValid && isMobilepriceValid) {
            
            MobileList mobiles = (MobileList)session.getAttribute("mobilelist");
            if (mobiles == null) {
                mobiles = new MobileList();
            }
            
            mobiles.saveMobile(mobileOS, mobilebrand, mobilemodel, mobilememory, IMEI, mobileprice);
            session.removeAttribute("mobilearray");
            session.setAttribute("currentmobile", mobiles.getMobile(mobilebrand, mobilemodel, mobilememory, IMEI));
            session.setAttribute("mobilelist", mobiles);
            
        }
        else {            
            nextPage = "/SelectMobiles.jsp";
            
            // Add the validation object to the session for use by the JSP
            request.setAttribute("errors", errors);
        }
        
        
        getServletContext().getRequestDispatcher(nextPage).forward(request, response);
        
    }
    

     // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}            
    

    