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

/**
 *
 * @author maninder
 */
public class AddMobileServlet extends HttpServlet {

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
                
        // Get the MobileList "cart" of mobile from the session
        HttpSession session = request.getSession();
        MobileList mobiles = (MobileList)session.getAttribute("mobilelist");
        
        // If the user has not yet added mobiles, it will be null initially,
        // so construct a new MobileList cart in that case.
        if (mobiles == null) {
            mobiles = new MobileList();
        }
        
        // Get the mobilebrand, mobilemodel and mobilememory form the request
        String mobilebrand = request.getParameter("mobilebrand");
        String mobilemodel = request.getParameter("mobilemodel");
        String mobilememory = request.getParameter("mobilememory");
        String IMEI = request.getParameter("IMEI");
        
        // Look them up in the array of all mobiles stored in  the session        
        //MobileArray allmobiles = (MobileArray)session.getAttribute("mobilearray");
        MobileList allmobiles = (MobileList)session.getAttribute("mobilearray");
        Mobile mobile = allmobiles.getMobile(mobilebrand, mobilemodel, mobilememory, IMEI );
        
        // Add the new mobile to the cart, and store the modified cart back in the session.
        mobiles.add(mobile);
        session.setAttribute("mobilelist", mobiles);
        
        getServletContext().
                getRequestDispatcher("/MobilesCart.jsp").
                        forward(request, response);
    
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

