/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controladores;

import Modelo.Controller;
import Modelo.Producto;
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
 * @author ronal
 */
@WebServlet(name = "svEditarProducto", urlPatterns = {"/svEditarProducto"})
public class svEditarProducto extends HttpServlet {

    Controller control = new Controller();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_editar=Integer.parseInt(request.getParameter("id_edit"));
        Producto prod=control.traerProducto(id_editar);
        
        HttpSession misesion=request.getSession();
        misesion.setAttribute("prodEditar", prod);
        
        response.sendRedirect("Producto_modificar.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String codigo = request.getParameter("CodigoProd");
        String nombre = request.getParameter("NombreProd");
        double precio = Double.parseDouble(request.getParameter("PrecioProd"));
        int stock = Integer.parseInt(request.getParameter("StockProd"));
        String imagen = request.getParameter("ImagenProd");
        String descripcion = request.getParameter("DescripcionProd");
        
        Producto prod = (Producto)request.getSession().getAttribute("prodEditar");

        prod.setCodigo(codigo);
        prod.setNombre(nombre);
        prod.setPrecio(precio);
        prod.setStock(stock);
        prod.setImagen(imagen);
        prod.setDescripcion(descripcion);
        
        control.editarProducto(prod);
        response.sendRedirect("admin.jsp");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
