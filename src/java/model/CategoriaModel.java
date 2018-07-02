/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author PC
 */
public class CategoriaModel {
    
    private int idCategoria;
    private String nombre;
    private String detalle;

    public static ArrayList<CategoriaModel> listaCategorias = new ArrayList<>();

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDetalle() {
        return detalle;
    }

 
    public CategoriaModel() {
    }

    
    public CategoriaModel(String nombre, String detalle) {
        this.nombre = nombre;
        this.detalle = detalle;
    }

    private CategoriaModel(int idCategoria, String nombre, String detalle) {
        this.idCategoria = idCategoria;
        this.nombre = nombre;
        this.detalle = detalle;
    }

       public void nuevaCategoria(CategoriaModel categoria) {
       
        int idMayor=0;
        
           if (!listaCategorias.isEmpty()) {
               for (CategoriaModel cat : listaCategorias) {
                   
                   if (cat.getIdCategoria()>idMayor) {
                       idMayor=cat.getIdCategoria();
                   }
               }
           }
           
        idMayor+=1;
        listaCategorias.add(new CategoriaModel(idMayor, categoria.getNombre(), categoria.getDetalle()));
        
    }
    public void editarCategoria(CategoriaModel categoria, int id){
        for (CategoriaModel lista : listaCategorias) {
            if (lista.getIdCategoria()==id) {
            
            lista.setNombre(categoria.getNombre());
            lista.setDetalle(categoria.getDetalle());
                
            }
    
        }
    }
        public CategoriaModel buscarCategoria(int id){
        CategoriaModel cat = null;
        for (CategoriaModel lista : listaCategorias) {
            
            if (lista.getIdCategoria()==id) {
            
            cat=lista;
                
            }
    
        }
        return cat;
    }
    public void eliminarCategoria(int id) {

        CategoriaModel catEliminar = new CategoriaModel();
        for (CategoriaModel lista : listaCategorias) {
            if (lista.getIdCategoria() == id) {
                catEliminar = lista;

            }

        }
        listaCategorias.remove(catEliminar);

    }
}
    

