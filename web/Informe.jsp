<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Head.jsp" />
        <link href="Contenido/css/estilo5.css" rel="stylesheet" type="text/css"/>
        <title>Informe</title>
        <script>
            window.onload = function () {

                var chart = new CanvasJS.Chart("chartContainer", {
                    animationEnabled: true,
                    title: {
                        text: "TOP VENTAS DE SEPTIEMBRE 2020"
                    },
                    data: [{
                            type: "pie",
                            startAngle: 240,
                            yValueFormatString: "##0.00\"%\"",
                            indexLabel: "{label} {y}",
                            dataPoints: [
                                {y: 40, label: "Blazer"},
                                {y: 20, label: "Pantalones"},
                                {y: 20, label: "Corbatas"},
                                {y: 10, label: "Camisas para hombre"},
                                {y: 10, label: "otros"}
                            ]
                        }]
                });
                chart.render();

            }
        </script>
    </head>
    <body>
        <div class="container-fluid" > 
            <div class="row C-medidas">
                <!--MENU INSERTADO-->
                <jsp:include page="Menu.jsp" />
                <div class="col-md-10">
                    <div class="row" id="Contenido-Administrador">

                        <div class="col-md-12" style="border: 2px solid #737373;">
                            <div class="container-fluid">
                                <!-- Inicio del Contenido-->
                                <div class="row" style="margin-bottom: 10px; margin-top: 10px;">
                                    <div class="col-md-4">
                                        <div class="card shadow py-2">
                                            <div class="card-body">
                                                <div class="row align-items-center">
                                                    <div class="col mr-2">
                                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">VENTAS DEL MES</div>
                                                        <div class="h5 mb-0 font-weight-bold text-gray-800">12,650,000</div>
                                                    </div>
                                                    <div class="col-auto">
                                                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="card shadow py-2">
                                            <div class="card-body">
                                                <div class="row align-items-center">
                                                    <div class="col mr-2">
                                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">GANANCIAS TOTAl (ANUAL)</div>
                                                        <div class="h5 mb-0 font-weight-bold text-gray-800">$ 24,000,000</div>
                                                    </div>
                                                    <div class="col-auto">
                                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="card shadow py-2">
                                            <div class="card-body">
                                                <div class="row align-items-center">
                                                    <div class="col mr-2">
                                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">INVENTARIO</div>
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col-auto">
                                                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">70%</div>
                                                            </div>
                                                            <div class="col">
                                                                <div class="progress progress-sm mr-2">
                                                                    <div class="progress-bar bg-info" role="progressbar" style="width: 70%" aria-valuenow="50"
                                                                         aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-auto">
                                                        <i class="fas fa-dolly fa-2x text-gray-300"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div id="chartContainer" style="height: 392px; width: 100%;"></div>
                                        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                                    </div>

                                    <div class="col-md-6" id="lista-precios">
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>PRODUCTO</th>
                                                    <th>CANTIDAD</th>
                                                    <th>VALOR TOTAL</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Blazer</td>
                                                    <td>144</td>
                                                    <td><i class="fas fa-dollar-sign"></i> 5,880,000 <a href="#" class="buscar-form"><i
                                                                class="fas fa-search-dollar"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>Pantalones</td>
                                                    <td>70</td>
                                                    <td><i class="fas fa-dollar-sign"></i> 2,100,000 <a href="#" class="buscar-form"><i
                                                                class="fas fa-search-dollar"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>Corbatas</td>
                                                    <td>69</td>
                                                    <td><i class="fas fa-dollar-sign"></i> 1,380,000 <a href="#" class="buscar-form"><i
                                                                class="fas fa-search-dollar"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>Camisas hombre</td>
                                                    <td>40</td>
                                                    <td><i class="fas fa-dollar-sign"></i> 1,400,000 <a href="#" class="buscar-form"><i
                                                                class="fas fa-search-dollar"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>zapatos</td>
                                                    <td>20</td>
                                                    <td><i class="fas fa-dollar-sign"></i> 1,300,000 <a href="#" class="buscar-form"><i
                                                                class="fas fa-search-dollar"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>Boligrafo</td>
                                                    <td>5</td>
                                                    <td><i class="fas fa-dollar-sign"></i> 500,000 <a href="#" class="buscar-form"><i
                                                                class="fas fa-search-dollar"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>Cinturon</td>
                                                    <td>3</td>
                                                    <td><i class="fas fa-dollar-sign"></i> 90,000 <a href="#" class="buscar-form"><i
                                                                class="fas fa-search-dollar"></i></a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <!--Fin del Contenido-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


    </body>
</html>
