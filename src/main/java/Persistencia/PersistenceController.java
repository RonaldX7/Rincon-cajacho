package Persistencia;

import Modelo.Contacto;
import Modelo.Producto;
import Modelo.Usuario;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ronal
 */
public class PersistenceController {

    UsuarioJpaController usuJPA = new UsuarioJpaController();

    public void crearUsuario(Usuario usu) {
        usuJPA.create(usu);
    }
    
    public List<Usuario> traerUsuarios() {
        return usuJPA.findUsuarioEntities();
    }
    
    public void borrarUsuario(int id_eliminar) {
        try {
            usuJPA.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Usuario traerUsuario(int id_editar) {
        return usuJPA.findUsuario(id_editar);
    }

    public void editarUsuario(Usuario usu) {
        try {
            usuJPA.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    ProductoJpaController prodJPA = new ProductoJpaController();
    
    public void crearProducto(Producto prod){
        prodJPA.create(prod);
    }
    
    public List<Producto> traerProductos(){
        return prodJPA.findProductoEntities();
    }
    
    public void borrarProducto(int id_eliminar) {
        try {
            prodJPA.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Producto traerProducto(int id_editar) {
        return prodJPA.findProducto(id_editar);
    }
    
    public void editarProducto(Producto prod){
        try {
            prodJPA.edit(prod);
        } catch (Exception ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    ContactoJpaController contaJPA = new ContactoJpaController();
    
    public void crearContacto(Contacto conta){
        contaJPA.create(conta);
    }
    
    public List<Contacto> traerContactos(){
        return contaJPA.findContactoEntities();
    }
    
    public Contacto traerContacto(int id_editar) {
        return contaJPA.findContacto(id_editar);
    }
    
    public void borrarContacto(int id_eliminar) {
        try {
            contaJPA.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
