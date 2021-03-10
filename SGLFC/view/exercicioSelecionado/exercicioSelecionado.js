function sair(){
    window.location.href='../login/tela-login.php'
  }
  
  function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }
  
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }

  function verificaResposta(alt, ex) {

    $.ajax({
      type: 'POST',
      url: '../../controller/controller.php',
      data: {action: "resposta", alternativa: alt},
      success: function(data) {
        if (data) {

          $('#questao' + alt).css('border', "2px solid green")
          
          $.ajax({
            type: 'POST',
            url: '../../controller/controller.php',
            data: {action: "insertResposta", exercicio: ex, valor: 1},
            success: function(resposta) {
              location.reload();
            }
          });

        }  else {
          $('#questao' + alt).css('border', "2px solid red")
        }
      }
  });
  }
  
  
  