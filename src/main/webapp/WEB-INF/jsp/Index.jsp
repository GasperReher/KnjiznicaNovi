<!DOCTYPE html>
<html lang="en">
<head>

    <%@ page contentType="text/html; charset=UTF-8" %>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Moja Knjiznica</title>

</head>
<body>
<div id="wrapper">
    <div>
        <header style="background-color: cornflowerblue">
            <div class="nav" style="width:100%" >
                <div class="row">
                    <div class="col-sm-2">
                        <img src="slike/logo.jpg" style="height:120px">
                    </div>

                    <div class="col-sm-4">
                        <h1>
                            MOJA KNJIŽNCA!
                        </h1>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
        </header>
    </div>

    <div class="nav">
        <ul>
            <li class="active">
                <a href="index">Domov</a>
            </li>
            <li>
                <a href="iskanje">Iskanje knjig</a>
            </li>
            <li>
                <a href="registracija">Registracija</a>
            </li>
            <div id="prijava">
                <li class="active" style="float:right;color:white" >
                    <a href="">Prijava</a>
                </li>
                <li style="float:right;color:white" >
                    <input type="password" name="pGeslo" placeholder="Geslo">
                </li>
                <li style="float:right;color:white" >
                    <input type="text" name="pUporabnisko" placeholder="Uporabniško ime">
                </li>
            </div>


        </ul>
    </div>

    <br>
    <div>
        <p>
            napsii nek
        </p>
    </div>
</div>


</body>
</html>