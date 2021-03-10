function sair(){
    window.location.href='../login/tela-login.php'
  }
  
  function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }
  
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }

  function verificaResposta(alt, ex, m) {

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
              window.location.href='../exercicio/exercicio.php?modulo=' + m
            }
          });

        }  else {
          $('#questao' + alt).css('border', "2px solid red")
        }
      }
  });
  }

  function back(m, e) {

    e -= 1

    window.location.href='../exercicioSelecionado/exercicioSelecionado.php?ex=' + e + '&mod=' + m

  }


  function next(m, e) {

    e += 1

    window.location.href='../exercicioSelecionado/exercicioSelecionado.php?ex=' + e + '&mod=' + m

  }
  
  
  