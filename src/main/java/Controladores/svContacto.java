/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controladores;

import Modelo.Contacto;
import Modelo.Controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ronal
 */
@WebServlet(name = "svContacto", urlPatterns = {"/svContacto"})
public class svContacto extends HttpServlet {

    Controller control = new Controller();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Contacto> listaContactos = new ArrayList<>();
        listaContactos = control.traerContactos();
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaContactos", listaContactos);

        response.sendRedirect("tablaMensajes.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String mensaje = request.getParameter("mensaje");
        
        Contacto conta = new Contacto();
        conta.setNombre(nombre);
        conta.setCorreo(correo);
        conta.setMensaje(mensaje);
        
        control.crearContacto(conta);
        
        response.sendRedirect("Contactanos.jsp");
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
