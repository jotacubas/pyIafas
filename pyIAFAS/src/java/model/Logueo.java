/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dtos.Usuario;

/**
 *
 * @author JJCUBAS
 */
public class Logueo {

    private Usuario usuario;
    private final String USER="administrador";
    private final String PASS="admin";
    
    public Logueo() {
        
    }

    public Logueo(Usuario usuario) {
        this.usuario = usuario;
    }
    
    
    public boolean validarUsuario(){
        boolean result = false;
        
        if(usuario.getUsuario().equals("administrador") && usuario.getClave().equals("admin")){
        result = true;
        
        }       
        
        return result;
    }
    
    
}
