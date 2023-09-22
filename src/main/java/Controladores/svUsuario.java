
package Controladores;
import Modelo.Controller;
import Modelo.Usuario;
import java.io.IOException;
import static java.lang.System.out;
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
@WebServlet(name = "svUsuario", urlPatterns = {"/svUsuario"})
public class svUsuario extends HttpServlet {

    Controller control = new Controller();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Usuario> listaUsuarios = new ArrayList<>();
        listaUsuarios = control.traerUsuarios();
        
        HttpSession misesion = request.getSession();

        if (request.getParameter("btnIngresar") != null) {
            String usuario = request.getParameter("txtNombre");
            String contrasena = request.getParameter("txtContra");

            for (Usuario usu : listaUsuarios) {
                if (usu.getNombre().equals(usuario) && usu.getContrasena().equals(contrasena)) {
                    misesion.setAttribute("Nombre", usuario);
                    misesion.setAttribute("tipo", usu.getTipo());
                    response.sendRedirect("admin.jsp");
                }
            }
            out.print("<script>alert('Usuario o clave no valida!);</script>");
        }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
