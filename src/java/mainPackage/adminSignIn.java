/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mainPackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nipun
 */
@WebServlet(name = "adminSignIn", urlPatterns = {"/adminSignIn"})
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024,  // 1 MB
    maxFileSize = 1024 * 1024 * 10,   // 10 MB
    maxRequestSize = 1024 * 1024 * 50 // 50 MB
)
public class adminSignIn extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        DatabaseLogIn db3 = new DatabaseLogIn();
        
        if(email!=null && password!=null){
            //database functions
            if(db3.adminSignIn(email, password)){
                session.setAttribute("admin", email);
                response.getWriter().print("ok");
            
            }
            else{
                response.getWriter().print("no");
            }
            
        }
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
