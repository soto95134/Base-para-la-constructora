<%@page import="model.ProductoModel"%>
<% ProductoModel pro = (ProductoModel)request.getAttribute("producto"); %>
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
                          <a href="#email"><span class="white-text email">ñublexpediciones@gmail.com</span></a>
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

              <h3>DETALLE PRODUCTO</h3>
              <div class="row">
                    <form class="col s12">
                      <div class="row">
                        <div class="input-field col s8">
                            <input  readonly id="first_name" type="text" class="validate" value="<% out.print(pro.getNombre()); %>">
                          <label for="first_name">NOMBRE PRODUCTO</label>
                        </div>

                      </div>
                      <div class="row">
                        <div class="input-field col s8">
                            <input readonly placeholder="Placeholder" id="first_name" type="text" class="validate" value="<% out.print(pro.getDetalle()); %>">
                          <label  for="disabled">DETALLE PRODUCTO</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s8">
                            <input readonly placeholder="Placeholder" id="first_name" type="text" class="validate" value="<% out.print(pro.getPrecio()); %>">
                          <label  for="disabled">PRECIO PRODUCTO</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s8">
                            <input readonly placeholder="Placeholder" id="first_name" type="text" class="validate" value="<% out.print(pro.getCantidad()); %>">
                          <label  for="disabled">CANTIDAD PRODUCTO</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s8">
                            <input readonly placeholder="Placeholder" id="first_name" type="text" class="validate" value="<% out.print(pro.getCategoria()); %>">
                          <label  for="disabled">CATEGORIA PRODUCTO</label>
                        </div>
                      </div>
</form>
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
