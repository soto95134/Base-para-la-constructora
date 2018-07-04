<!DOCTYPE html>
<html>
    <% boolean A;%>
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
                    <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Modal</a>
                    <li><div class="divider"></div></li>
                    <li><a href="listacategorias.do">Lista de categorias</a></li>
                    <li><div class="divider"></div></li>
                    <li><a href="listarproductos.do">Lista De Productos</a></li>
                    <li><div class="divider"></div></li>
                </ul>
            </div>

            <!--aqui va el codigo -->


            <!-- Modal Structure -->
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <h4>Presupuesto</h4>
                    <div class="row">
                        <div class="col s3">
                            <select>
                                <option value="" disabled selected>Tipo de casa</option>
                                <option>El bosque</option>
                                <option>Balle hermoso</option>
                                <option>Altos Pinares</option>
                                <option>Gran Hacienda</option>
                                <option>Pilares blancos</option>
                                <option>Rio Puro</option>
                            </select>
                        </div>
                        <div class="col s3">
                            <select>
                                <option value="" disabled selected>N° de dormitorios</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                        </div>
                        <div class="col s3" >
                            <select>
                                <option value="" disabled selected>N° de baños</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                        </div>


                        <div class="col s3">
                            <select>
                                <option value="" disabled selected>N° casas</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                        </div>
                        <ul class="collapsible">
                            <li>
                                <div class="collapsible-header">
                                    <i class="material-icons">description</i>
                                    Clickeame para ver los materiales
                                    <span class="badge"></span></div>
                                <div class="collapsible-body"><p>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>Material</th>
                                                <th>Cantidad</th>
                                                <th>Precio unitario</th>
                                                <th>Precio total</th>
                                                <th>Seleccionar</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>Kilo de clavos</td>
                                                <td>20</td>
                                                <td>$1.800</td>
                                                <td>$36.000</td>
                                                <td>                    <p>
                                                        <label>
                                                            <input type="checkbox"/>
                                                            <span></span>
                                                        </label>
                                                    </p></td>
                                            </tr>
                                            <tr>
                                                <td>Ladrillos</td>
                                                <td>2.000</td>
                                                <td>$200</td>
                                                <td>$400.000</td>
                                                <td>                    <p>
                                                        <label>
                                                            <input type="checkbox"/>
                                                            <span></span>
                                                        </label>
                                                    </p></td>
                                            </tr>
                                            <tr>
                                                <td>Sacos de cemento</td>
                                                <td>15</td>
                                                <td>$3600</td>
                                                <td>$54.000</td>
                                                <td>                    <p>

                                                        <label>
                                                            <input type="checkbox"/>
                                                            <span></span>
                                                        </label>
                                                    </p></td>
                                            </tr>
                                                                    <tr>
                                                <td> </td>
                                                <td> </td>
                                                <td>Precio total:</td>
                                                <td>$490.000</td>
                                                <td>                    <p>
                                                <td> </td>

                                            </tr>

                                        </tbody>
                                    </table>    

                                </div>
                            </li>
                        </ul>

                        <p>Clickea aqui abajo para crear un presupuesto con los items seleccionados:</p>
                        <div class="">
                            <a href="#modal1" class="modal-trigger waves-effect waves-green btn-flat">Rehacer presupuesto<i class="material-icons left">description</i></a>
                        </div>


                        <div class="modal-footer">
                            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Aceptar e imprimir<i class="material-icons left">local_printshop</i></a>
                        </div>
                        <div class="modal-footer">
                            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar<i class="material-icons left">cancel</i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
            <div id="modal2" class="modal">
                <div class="modal-content">
                    <h4>Presupuesto</h4>
                    <div class="row">
                        <div class="col s3">
                            <select>
                                <option value="" disabled selected>Tipo de casa</option>
                                <option>El bosque</option>
                                <option>Balle hermoso</option>
                                <option>Altos Pinares</option>
                                <option>Gran Hacienda</option>
                                <option>Pilares blancos</option>
                                <option>Rio Puro</option>
                            </select>
                        </div>
                        <div class="col s3">
                            <select>
                                <option value="" disabled selected>N° de dormitorios</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                        </div>
                        <div class="col s3" >
                            <select>
                                <option value="" disabled selected>N° de baños</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                        </div>


                        <div class="col s3">
                            <select>
                                <option value="" disabled selected>N° casas</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                        </div>
                        <ul class="collapsible">
                            <li>
                                <div class="collapsible-header">
                                    <i class="material-icons">description</i>
                                    Clickeame para ver los materiales
                                    <span class="badge"></span></div>
                                <div class="collapsible-body"><p>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>Material</th>
                                                <th>Cantidad</th>
                                                <th>Precio unitario</th>
                                                <th>Precio total</th>
                                                <th>Seleccionar</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>Kilo de clavos</td>
                                                <td>20</td>
                                                <td>$1.800</td>
                                                <td>$36.000</td>
                                                <td>                    <p>
                                                        <label>
                                                            <input type="checkbox"/>
                                                            <span></span>
                                                        </label>
                                                    </p></td>
                                            </tr>
                                            <tr>
                                                <td>Sacos de cemento</td>
                                                <td>15</td>
                                                <td>$3600</td>
                                                <td>$54.000</td>
                                                <td>                    <p>

                                                        <label>
                                                            <input type="checkbox"/>
                                                            <span></span>
                                                        </label>
                                                    </p></td>
                                            </tr>
                                                                    <tr>
                                                <td> </td>
                                                <td> </td>
                                                <td>Precio total:</td>
                                                <td>$490.000</td>
                                                <td>                    <p>
                                                <td> </td>

                                            </tr>

                                        </tbody>
                                    </table>    

                                </div>
                            </li>
                        </ul>

                        <p>Clickea aqui abajo para crear un presupuesto con los items seleccionados:</p>
                        <div class="">
                            <a href="#modal2" class="modal-trigger waves-effect waves-green btn-flat">Rehacer presupuesto<i class="material-icons left">description</i></a>
                        </div>


                        <div class="modal-footer">
                            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Aceptar e imprimir<i class="material-icons left">local_printshop</i></a>
                        </div>
                        <div class="modal-footer">
                            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar<i class="material-icons left">cancel</i></a>
                        </div>
                    </div>
                </div>
            </div>
            
            
            
            
        </div>




        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!--JavaScript at end of body for optimized loading-->
        <script type="text/javascript" src="js/materialize.min.js"></script>

        <script>
            $(document).ready(function () {
                $('.sidenav').sidenav();
                $('.modal').modal();
                $(".sidenav").sidenav();
                $('.collapsible').collapsible();
                $('select').formSelect();
            });
            $('.collapsible').collapsible();
        </script>
    </body>
</html>
