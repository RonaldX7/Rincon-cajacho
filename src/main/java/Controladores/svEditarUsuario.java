/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controladores;

import Modelo.Controller;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "svEditarUsuario", urlPatterns = {"/svEditarUsuario"})
public class svEditarUsuario extends HttpServlet {

    Controller control = new Controller();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id_editar = Integer.parseInt(request.getParameter("id_edit"));
        Usuario usu = control.traerUsuario(id_editar);

        HttpSession misesion = request.getSession();
        misesion.setAttribute("usuEditar", usu);

        response.sendRedirect("Usuario_modificar.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String dni = request.getParameter("dni");
        String email = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");
        String tipo = request.getParameter("tipo");
        
        Usuario usu = (Usuario)request.getSession().getAttribute("usuEditar");
        
        usu.setNombre(nombre);
        usu.setDni(dni);
        usu.setEmail(email);
        usu.setContrasena(contrasena);
        usu.setTipo(tipo);
        
        control.editarUsuario(usu);
        response.sendRedirect("admin.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
