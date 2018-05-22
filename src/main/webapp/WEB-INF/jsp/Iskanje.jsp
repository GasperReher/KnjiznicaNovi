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
            <li>
                <a href="index">Domov</a>
            </li>
            <li class="active">
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
    </div></div>
    <br>
<div class="container" style="width:100%">
    <div class="row" style="width:100%">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="userData">
                <form name="vnosP">
                    <div class="container2">

                        <h3 class="reg">Podatki za iskanje knjige</h3>

                    </div>
                    <div class="container1" style=" background-color: cornflowerblue; border:3px solid black; border-radius:10px">
                        <div class="row">
                            <div class="col-sm-2">
                                <select name="izbirni_seznam_ena" id="izbirni_seznam_ena">
                                    <option selected = "selected">Avtor</option>
                                    <option>ISBN</option>
                                    <option>Založba</option>
                                    <option>Leto Izdaje</option>
                                    <option>Prevod</option>
                                    <option>Ilustracije</option>
                                    <option>Žanr</option>
                                    <option>Ciljna publika</option>
                                    <option>Prostor</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="rNaslov">
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-sm-2">
                                <select name="izbirni_seznam_dva" id="izbirni_seznam_dva">
                                    <option>Avtor</option>
                                    <option selected = "selected">ISBN</option>
                                    <option>Založba</option>
                                    <option>Leto Izdaje</option>
                                    <option>Prevod</option>
                                    <option>Ilustracije</option>
                                    <option>Žanr</option>
                                    <option>Ciljna publika</option>
                                    <option>Prostor</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="rAvtor">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-2">
                                <select name="izbirni_seznam_tri" id="izbirni_seznam_tri">
                                    <option>Avtor</option>
                                    <option>ISBN</option>
                                    <option>Založba</option>
                                    <option selected = "selected">Leto Izdaje</option>
                                    <option>Prevod</option>
                                    <option>Ilustracije</option>
                                    <option>Žanr</option>
                                    <option>Ciljna publika</option>
                                    <option>Prostor</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="rISBN">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-2">
                                <select name="izbirni_seznam_stiri" id="izbirni_seznam_stiri">
                                    <option>Avtor</option>
                                    <option>ISBN</option>
                                    <option>Založba</option>
                                    <option>Leto Izdaje</option>
                                    <option selected = "selected">Prevod</option>
                                    <option>Ilustracije</option>
                                    <option>Žanr</option>
                                    <option>Ciljna publika</option>
                                    <option>Prostor</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="rKljucneBesede">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-2">
                                <select name="izbirni_seznam_pet" id="izbirni_seznam_pet">
                                    <option>Avtor</option>
                                    <option>ISBN</option>
                                    <option>Založba</option>
                                    <option>Leto Izdaje</option>
                                    <option>Prevod</option>
                                    <option selected = "selected">Ilustracije</option>
                                    <option>Žanr</option>
                                    <option>Ciljna publika</option>
                                    <option>Prostor</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="rKraj">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-2">
                                <select name="izbirni_seznam_sest" id="izbirni_seznam_sest">
                                    <option>Avtor</option>
                                    <option>ISBN</option>
                                    <option>Založba</option>
                                    <option>Leto Izdaje</option>
                                    <option>Prevod</option>
                                    <option>Ilustracije</option>
                                    <option selected = "selected">Žanr</option>
                                    <option>Ciljna publika</option>
                                    <option>Prostor</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="rPostna">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-2">
                                <select name="izbirni_seznam_sedem" id="izbirni_seznam_sedem">
                                    <option>Avtor</option>
                                    <option>ISBN</option>
                                    <option>Založba</option>
                                    <option>Leto Izdaje</option>
                                    <option>Prevod</option>
                                    <option>Ilustracije</option>
                                    <option>Žanr</option>
                                    <option selected = "selected">Ciljna publika</option>
                                    <option>Prostor</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="rIlustracije">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-2">
                                <select name="izbirni_seznam_osem" id="izbirni_seznam_osem">
                                    <option>Avtor</option>
                                    <option>ISBN</option>
                                    <option>Založba</option>
                                    <option>Leto Izdaje</option>
                                    <option>Prevod</option>
                                    <option>Ilustracije</option>
                                    <option>Žanr</option>
                                    <option>Ciljna publika</option>
                                    <option selected = "selected">Prostor</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="rCiljnaPublika">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="col-sm-3"></div>
    </div>
</div>
</body>
</html>