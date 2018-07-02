<%@page import="model.CategoriaModel" %>
<%@page import="java.util.ArrayList" %>
<% ArrayList<CategoriaModel> lista = (ArrayList<CategoriaModel>) request.getAttribute("listaCategorias"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    </head>

    <body>
        <nav>
            <div class="nav-wrapper orange accent-3 row">
                <a href="#!" class="brand-logo col s4 offset-s6">Logo</a>
                <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="sass.html">Sass</a></li>
                    <li><a href="badges.html">Components</a></li>
                    <li><a href="collapsible.html">Javascript</a></li>
                    <li><a href="mobile.html">Mobile</a></li>
                </ul>
            </div>
        </nav>
        <div class="row">
            <div class="col s0 m0 l3">
                <ul class="sidenav sidenav-fixed" id="mobile-demo">
                    <li><div class="user-view">
                            <div class="background"
                                 >
                                <img class="responsive-img" src="image/vch.jpg">
                            </div>
                            <a href="#user"><img class="circle" src="image/gdd.jpg"></a>
                            <a href="#name"><span class="white-text name">Pewmafe</span></a>
                            <a href="#email"><span class="white-text email">Ã±ublexpediciones@gmail.com</span></a>
                        </div></li>
                    <li><div class="divider"></div></li>
                    <li><a href="index.html">MENU</a></li>
                    <li><div class="divider"></div></li>
                    <li><a href="listacategorias.do">Lista de categorias</a></li>
                    <li><div class="divider"></div></li>
                    <li><a href="listarproductos.do">Lista De Productos</a></li>
                    <li><div class="divider"></div></li>
                </ul>
            </div>

            <!--aqui va el codigo -->

            <div class="imput-field col s12 m12 l9">

                <h3>NUEVO PRODUCTO</h3>
                <div class="row">
                    <form class="col s12" action="nuevoproducto.do" method="POST">

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="ptxtnombre" name="petxtnombre" type="text" class="validate">
                                <label for="txtnombre">Nombre Producto</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="ptxtdetalle" name="petxtdetalle" type="text" class="validate">
                                <label for="txtdetalle">Detalle Producto</label>
                            </div>
                        </div>

                        <div class="row">

                            <div>
                                <select name="categoria">
                                    <option value="" disabled selected>Elije una categoria</option>

                                    <% for (CategoriaModel cat : lista) {


                                    %>
                                    <option value="<% out.print(cat.getIdCategoria()); %>"><% out.print(cat.getNombre()); %></option>

                                    <%
                                        }
                                    %>

                                </select>
                                <label>Selecciona Categoria</label>
                            </div>

                        </div>

                        <div class="input-field col s6">
                            <input id="ptxtcantidad" name="petxtcantidad" type="text" class="validate">
                            <label for="txtcantidad">Cantidad Producto</label>
                        </div>

                        <div class="input-field col s6">
                            <input id="ptxtprecio" name="petxtprecio" type="text" class="validate">
                            <label for="txtprecio">Precio Producto</label>
                        </div>
                        <div class="row">
                            <button class="btn waves-effect waves-light" type="submit" name="action">Submit
                                <i class="material-icons right">send</i>
                            </button>

                        </div>

                    </form>

                </div>




                <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
                <script type="text/javascript" src="js/materialize.min.js"></script>

                <script>

                    $(document).ready(function () {

                        
                        $(".sidenav").sidenav();
                        $('.collapsible').collapsible();
                        $('select').formSelect();
                    });
                </script>
                </body>
                </html>
