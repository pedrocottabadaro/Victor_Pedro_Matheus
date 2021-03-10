function sair(){
    window.location.href='../login/tela-login.php'
  }
  
  function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }
  
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }

  function verificaResposta(alt) {

    $.ajax({
      type: 'POST',
      url: '../../controller/controller.php',
      data: {action: "resposta", alternativa: alt},
      success: function(data) {
        if (data) {
          alert("Correto!")
        }  else {
          alert("Incorreto")
        }
  
          
      }
  });
  }
  
  
  