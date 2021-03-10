


function turnActive(btn, n, m){
 
  button = document.getElementById(btn);
  // btn.classlist.toggle("hidden");
  if(button.classList.contains("clicked")){
      button.classList.toggle("clicked");
      window.location.href='../exercicioSelecionado/exercicioSelecionado.php?ex=' + n + '&mod=' + m;
  }


  $("button").each(function(){

    if($(this).hasClass("clicked")){
        $(this).removeClass("clicked");
    }

});
  button.classList.toggle("clicked");

}

function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

function sair(){
  window.location.href='../login/tela-login.php'
}
