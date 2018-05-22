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

    <div class="nav">
        <ul>
            <li>
                <a href="index">Domov</a>
            </li>
            <li>
                <a href="iskanje">Iskanje knjig</a>
            </li>
            <li >
                <a href="registracija">Registracija</a>
            </li>
            <li class="active">
                <a href="dodajKnj">Dodaj Knjigo</a>
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
    <div class="container" style="width:100%">
        <div class="row" style="width:100%">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="userData">
                    <form name="vnosP">
                        <div class="container2">

                            <h3 class="reg">Podatki o knjigi</h3>

                        </div>
                        <div class="container1">

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Naslov</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kNaslov">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Ime</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kAvtorIme">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Priimek</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kAvtorPriimek">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>ISBN</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kISBN">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Založba</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kZalozba">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Leto izdaje</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kLetoIzdaje">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Prevod</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kPrevod">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Ilustracije</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kIlustracije">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Žanr knjige</p>
                                </div>
                                <div class="col-sm-2">
                                    <select name="kZanr">
                                        <option value="g">g</option>

                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Ciljna publika</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kCiljnaPublika">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Ilustracije</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" name="kIlustracije">
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-sm-5"></div>
                            <div class="col-sm-2"><input id="submit-reg" type="submit" value="Potrdi"></div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="col-sm-3"></div>
        </div>
    </div>


</div>
</body>
</html>