<%@page import="model.CategoriaModel" %>
<%@page import="java.util.ArrayList" %>
<% ArrayList<CategoriaModel> lista= (ArrayList<CategoriaModel>)request.getAttribute("listaCategorias"); %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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

              <h3>CATEGORIAS </h3>
            <div class="row">

                <table class="highlight centered responsive-table">
                    <thead>
                      <tr>
                          <th>ID</th>
                          <th>Nombre Categoria</th>
                          <th>Detalle Categoria</th>
                          <th>Opciones</th>
                      </tr>
                    </thead>

                    <tbody>
                        <%for (CategoriaModel cat : lista) {
                            
                            
                        %>
                      <tr>
                        <td><% out.print(cat.getIdCategoria()); %></td>
                        <td><% out.print(cat.getNombre()); %></td>
                        <td><% out.print(cat.getDetalle()); %></td>                      
                        <td>
                            
                            <a href="buscarcategoriab.do?idCategoria=<% out.print(cat.getIdCategoria()); %>" class="btn-floating waves-effect waves-light yellow"><i class="material-icons">search</i></a>
                            <a href="buscarcategoriae.do?idCategoria=<% out.print(cat.getIdCategoria()); %>" class="btn-floating waves-effect waves-light yellow"><i class="material-icons">edit</i></a>
                            <a href="buscarcategoriacontrolerborrar.do?idCategoria=<% out.print(cat.getIdCategoria()); %>" class="btn-floating waves-effect waves-light yellow"><i class="material-icons">delete</i></a>
                        </td>
                      </tr>
                      <%
                      }
                      %>
                     
                    </tbody>
                  </table>

            </div>

            <div class="row">
                <a href="Nueva-Categoria.jsp" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>

            </div>



          </div>

        </div>

                
                

          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js"></script>

    <script>
         $(document).ready(function(){
    $('.sidenav').sidenav();
  });
  $('.collapsible').collapsible();
    </script>
    </body>
  </html>
