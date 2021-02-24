


function turnActive(btn){
    button = document.getElementById(btn);
    // btn.classlist.toggle("hidden");
    $("button").each(function(){

        if($(this).hasClass("clicked")){
            $(this).removeClass("clicked");
            $("#"+this.id+" h3").css("color", "white");
            $("#"+this.id+" h4").css("color", "white");

            window.location.href='../exercicioSelecionado/exercicio.html'
        }
        
    });
    button.classList.toggle("clicked");
    var nomeExer =$( "#"+btn+ " h3" );
    var numeroExer =$( "#"+btn+" h4" );

   nomeExer.css("color", "black");
   numeroExer.css("color", "black");

}

function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

function sair(){
  window.location.href='../login/tela-login.html'
}
