<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page import = "javax.servlet.RequestDispatcher" %>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Moja Knjiznica</title>
    <script src="js/JavaScript.js"></script>
    <script>
        var session = '<%= session.getAttribute("currentSessionUser") %>'

        document.write(session);
    </script>
</head>
<body>
<div id="wrapper">
    <div class="glava">
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
    <div class="neprijavljen">
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
                <form method="post" action="login" id="loginform" >
                <li class="active" style="float:right;color:white" >
                    <a href="#" onclick="submitPrijava()">Prijava</a>
                </li>
                <li style="float:right;color:white" >
                    <input type="password" name="pGeslo" placeholder="Geslo">
                </li>
                <li style="float:right;color:white" >
                    <input type="text" name="pUporabnisko" placeholder="Uporabniško ime">
                </li>
                </form>
            </div>


        </ul>
    </div>
    </div>
    <div class="prijavljen">
        <div class="nav">
            <ul>
                <li class="active">
                    <a href="index">Domov</a>
                </li>
                <li>
                    <a href="iskanje">Iskanje knjig</a>
                </li>
                <li>
                    <a href="dodajKnj">Dodaj Knjigo</a>
                </li>
                <li>
                    <a href="profil">Profil</a>
                </li>
                <li style="float:right">
                    <div class="prijavljen">
                        <p>Pozdravljen, <%= session.getAttribute( "currentSessionUserName" ) %></p>
                    </div>
                </li>
                <li>

                    <a href="logout">Odjava</a>

                </li>


            </ul>
        </div>
    </div>

    <br>
    <div class="telo">
        <div class="police">
            <div class="slikadomov">
                <a href="Iskanje"><img src="slike/police_domaca/polica1.jpg" class="slika_police"></a>
                <img src="slike/police_domaca/polica2.jpg" class="slika_police">
                <img src="slike/police_domaca/polica3.jpg" class="slika_police">
            </div>
            <div class="slikadomov">
                <img src="slike/police_domaca/polica4.jpg" class="slika_police">
                <img src="slike/police_domaca/polica5.jpg" class="slika_police">
                <img src="slike/police_domaca/polica6.jpg" class="slika_police">
            </div>
            <div class="slikadomov">
                <img src="slike/police_domaca/polica7.jpg" class="slika_police">
                <img src="slike/police_domaca/polica8.jpg" class="slika_police">
                <img src="slike/police_domaca/polica9.jpg" class="slika_police">
            </div>
        </div>
        <button onclick="prijav()">Prijavljen</button>
        <button onclick="neprijav()">Neprijavljen</button>
    </div>


</div>

<script>
    prijav();
</script>
</body>
</html>