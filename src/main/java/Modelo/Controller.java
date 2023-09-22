
package Modelo;

import Persistencia.PersistenceController;
import java.util.List;

/**
 *
 * @author ronal
 */
public class Controller {
    
    PersistenceController controlP = new PersistenceController();
    
    //Seccion Usuario
    public void crearUsuario(Usuario usu){
        controlP.crearUsuario(usu);
    }
    
    public List<Usuario> traerUsuarios(){
        return controlP.traerUsuarios();
    }
    
    public void borrarUsuario(int id_eliminar) {
        controlP.borrarUsuario(id_eliminar);
    }

    public Usuario traerUsuario(int id_editar) {
        return controlP.traerUsuario(id_editar);
    }

    public void editarUsuario(Usuario usu) {
        controlP.editarUsuario(usu);
    }
    
    //Seccion Producto
    public void crearProducto(Producto prod){
        controlP.crearProducto(prod);
    }
    
    public List<Producto> traerProductos(){
        return controlP.traerProductos();
    }
    
    public void borrarProducto(int id_eliminar) {
        controlP.borrarProducto(id_eliminar);
    }
    
    public Producto traerProducto(int id_editar) {
        return controlP.traerProducto(id_editar);
    }
    
    public void editarProducto(Producto prod) {
        controlP.editarProducto(prod);
    }
    
    //Seccion Contacto
    public void crearContacto(Contacto conta){
        controlP.crearContacto(conta);
    }
    
    public List<Contacto> traerContactos(){
        return controlP.traerContactos();
    }
    
    public void borrarContacto(int id_eliminar) {
        controlP.borrarContacto(id_eliminar);
    }
}
