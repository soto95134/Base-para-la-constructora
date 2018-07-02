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
public class ProductoModel {

    int idProducto;
    String nombre;
    String detalle;
    int cantidad;
    String Categoria;
    int Precio;

    public static ArrayList<ProductoModel> listaProductos = new ArrayList<>();

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public int getPrecio() {
        return Precio;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDetalle() {
        return detalle;
    }

    public String getCategoria() {
        return Categoria;
    }

    public ProductoModel() {
    }

    public ProductoModel(int Precio, String nombre, String detalle, int cantidad, String Categoria) {
        this.nombre = nombre;
        this.detalle = detalle;
        this.Categoria = Categoria;
        this.cantidad = cantidad;
        this.Precio = Precio;

    }

    private ProductoModel(int idProducto, int Precio, String nombre, String detalle, int cantidad, String Categoria) {
        this.idProducto = idProducto;
        this.Precio = Precio;
        this.nombre = nombre;
        this.detalle = detalle;
        this.cantidad = cantidad;
        this.Categoria = Categoria;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void nuevoProductos(ProductoModel producto) {

        int idMayor = 0;

        if (!listaProductos.isEmpty()) {
            for (ProductoModel pro : listaProductos) {

                if (pro.getIdProducto() > idMayor) {
                    idMayor = pro.getIdProducto();
                }
            }
        }

        idMayor += 1;
        listaProductos.add(new ProductoModel(idMayor, producto.getPrecio(), producto.getNombre(), producto.getDetalle(), producto.getCantidad(), producto.getCategoria()));

    }

    public ProductoModel BuscarProducto(int id) {
        ProductoModel cat = null;
        for (ProductoModel lista : listaProductos) {

            if (lista.getIdProducto() == id) {

                cat = lista;

            }

        }
        return cat;
    }
    
        public void eliminarproducto(int id) {

        ProductoModel catEliminar = new ProductoModel();
        for (ProductoModel lista : listaProductos) {
            if (lista.getIdProducto()== id) {
                catEliminar = lista;

            }

        }
        listaProductos.remove(catEliminar);

    }
        public void editarproducto(ProductoModel producto, int id){
            
        for (ProductoModel lista : listaProductos) {
            if (lista.getIdProducto()==id) {
            
            lista.setNombre(producto.getNombre());
            lista.setDetalle(producto.getDetalle());
            lista.setPrecio(producto.getPrecio());
            lista.setCantidad(producto.getCantidad());
            lista.setCategoria(producto.getCategoria());
   
            }
    
        }
    }
}
