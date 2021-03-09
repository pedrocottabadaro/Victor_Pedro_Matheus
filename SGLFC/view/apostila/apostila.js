function sair(){
    window.location.href='../login/tela-login.php'
  }
  
  function turnActive(btn){
      button = document.getElementById(btn);
      // btn.classlist.toggle("hidden");
      $("button").each(function(){
  
          if($(this).hasClass("clicked")){
              $(this).removeClass("clicked");
              $("#"+this.id+" h4[name='porCompleto'").toggleClass("hidden");
              $("#"+this.id+" h4[name='numExer']").toggleClass("hidden");
  
              var numCapitulo=$( "#"+btn+" h3" );
              numCapitulo.css("color", "white");
  
              var capitulo=$( "#"+btn+" h4.capitulo" );
              capitulo.css("color", "white");
              var url = "http://127.0.0.1:5500/exercicio/exercicio.html";
              location.replace(url);
          }
          
      });
      button.classList.toggle("clicked");
      var porExer =$( "#"+btn+ " h4[name='porCompleto']" );
      var numExer =$( "#"+btn+" h4[name='numExer']" );
  
      var numCapitulo=$( "#"+btn+" h3" );
      
      var capitulo=$( "#"+btn+" h4.capitulo" );
      capitulo.css("color", "black");
      numCapitulo.css("color", "black");
      numExer.css("color", "black");
      porExer.css("color", "white");
      porExer.toggleClass("hidden");
      numExer.toggleClass("hidden");
      
  }
  
  function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }
  
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }
  
function showPdf(n) {
    window.open('../../extra/pdf/pdf.html?cap='+n)
}  