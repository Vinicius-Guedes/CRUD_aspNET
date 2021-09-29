$(document).ready(function () {
    $('.menu').click(function () { Click(this); });
}
);

function Click(element) {
    //Ao clicar executa este comando
    console.log("Clicou " + element.id);
    location.replace(element.id + ".aspx");
    
}
