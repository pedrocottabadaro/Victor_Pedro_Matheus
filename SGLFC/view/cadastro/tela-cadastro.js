function cadastrar(){

    let valida = true

    if ($('#senha').val() != $('#senha2').val()) {

      $('#senha1').text("")
      $('#senha1').val("")
      $('#senha2').text("")
      $('#senha2').val("")
      alert('Senhas não batem!')

    }

    $('input').each(function(e){


      if ($(this).val() == "") {

        valida = false

      }

    })

    if (valida) {

      alert('Cadastro Realizado!')
  
    }

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