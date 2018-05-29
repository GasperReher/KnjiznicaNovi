function preveriReg(){

    document.getElementById("emailalert").classList.remove("alert");
    document.getElementById("emailalert").classList.remove("alert-warning");
    document.getElementById("gesloalert").classList.remove("alert");
    document.getElementById("gesloalert").classList.remove("alert-warning");
    document.getElementById("geslo1alert").classList.remove("alert");
    document.getElementById("geslo1alert").classList.remove("alert-warning");
    document.getElementById("naslovalert").classList.remove("alert");
    document.getElementById("naslovalert").classList.remove("alert-warning");
    document.getElementById("emailalert").innerHTML="";
    document.getElementById("gesloalert").innerHTML="";
    document.getElementById("geslo1alert").innerHTML="";
    document.getElementById("naslovalert").innerHTML="";
    var p=true;

    p=preveriMail();
    p=preveriNaslov();
    p=preveriGeslo();

    if(p==false)
        return;
    document.getElementById("vnosP").submit();

}

function preveriMail(){
    oForm = document.forms["vnosP"];
    var email= oForm.elements["rEmail"].value;
    var p=true;

    if(email.charAt(0)=='@'||email.charAt(email.length-4)=='@'||email.charAt(email.length-3)=='@'){
        var element = document.getElementById("emailalert");
        element.classList.add("alert");
        element.classList.add("alert-warning");
        element.innerHTML = "Napačen email";
        p=false;
    }
    emailBool=false;
    for(i=1;i<email.length-1;i++){
        if(email.charAt(i)=='@'){
            emailBool=true;
            break;
        }
    }
    if(email.endsWith(".com")||(email.endsWith(".si")))
        emailBool=true;
    else
        emailBool=false;
    if(emailBool==false) {
        var element = document.getElementById("emailalert");
        element.classList.add("alert");
        element.classList.add("alert-warning");
        element.innerHTML = "Napačen email";
        p=false;
    }
    return p;
}

function preveriGeslo(){
    var p =true;
    oForm = document.forms["vnosP"];
    var geslo=oForm.elements["rGeslo"].value;
    var geslo1=oForm.elements["rGeslo1"].value;
    var dolzina=geslo.length;
    var velika=false;
    var mala=false;
    var st=false;
    for(i=1;i<geslo.length;i++){
        if(geslo.charAt(i)==geslo.charAt(i).toUpperCase())
            velika=true;
        if(geslo.charAt(i)==geslo.charAt(i).toLowerCase())
            mala=true;
        if(isNaN(geslo.charAt(i))==false)
            st=true;
    }
    if(velika==false||mala==false||st==false||dolzina<8) {
        var element = document.getElementById("gesloalert");
        element.classList.add("alert");
        element.classList.add("alert-warning");
        element.innerHTML = "Geslo naj vsebuje vsaj 1 veliko črko, 1 malo črko in 1 številko.";
        p=false;
    }

    if(geslo!=geslo1) {
        var element = document.getElementById("geslo1alert");
        element.classList.add("alert");
        element.classList.add("alert-warning");
        element.innerHTML = "Gesli se ne ujemata";
        p=false;
    }
    return p;
}

function preveriNaslov(){
    var p =true;
    oForm=document.forms["vnosP"];
    var naslov=oForm.elements["rNaslov"].value;

    j=-1;
    j=naslov.indexOf(' ');
    if (j==-1){
        p=false;
    }
    else {
        var ulica = naslov.substring(0, j);
        var stevilka = naslov.substring(j + 1)

        for (i = 0; i < ulica.length; i++) {
            if (ulica.charAt(i).toLowerCase() != ulica.charAt(i).toUpperCase())
                continue;
            else
                p=false;
        }
        for (i = 0; i < stevilka.length; i++) {
            if (isNaN(stevilka))
                p = false;
        }
    }
    if(j==0||j==naslov.length-1){
        p=false;
    }
    if(p==false){
        var element = document.getElementById("naslovalert");
        element.classList.add("alert");
        element.classList.add("alert-warning");
        element.innerHTML = "Naslov ni pravi";
    }
}


function submitPrijava(){
    document.getElementById("loginform").submit();
}

function odjava() {
    document.getElementById("odjava").submit();
}

function prijav() {
    if(session=="null"  ) {
        $("div.prijavljen").hide();
        $("div.neprijavljen").show();
    }
    else {
        $("div.neprijavljen").hide();
        $("div.prijavljen").show();
    }
}