/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mainPackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nipun
 */
@WebServlet(name = "adminSignOut", urlPatterns = {"/adminSignOut"})
public class adminSignOut extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        session.removeAttribute("admin");
        response.sendRedirect("http://localhost:8080/ECommerce_Web_Project/admin/");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
