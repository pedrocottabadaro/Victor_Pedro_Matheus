function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return typeof sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
    return false;
};

    $(document).ready(function() {
        var capitulo = getUrlParameter('cap')
        $("#title").text("Capítulo " + capitulo)

        switch (capitulo) {
            case 1:
            
                $("#pdf").attr("src", "../extra/apostila/Cap 1 - Introdução à Lógica Matemática.pdf")

                break;
            case 2:

                $("#pdf").attr("src", "../extra/apostila/Cap 2 - Operaçãoes Lógicas sobre Preposições.pdf")
                
                break;
            case 3:

                $("#pdf").attr("src", "../extra/apostila/Cap 3 - Tabelas-Verdade de Proposições Compostas.pdf")
                
                break;
            case 4:

                $("#pdf").attr("src", "../extra/apostila/Cap 4 - Tautologias, contradições e contigências.pdf")
                
                break;
            case 5:

                $("#pdf").attr("src", "../extra/apostila/Cap 5 - Implicação e equivalência lógica.pdf")
                
                break;
            case 6:

                $("#pdf").attr("src", "../extra/apostila/Cap 6 - Álgebra das proposições.pdf")
                
                break;
            case 7:

                $("#pdf").attr("src", "../extra/apostila/Cap 7 - Método Dedutivo.pdf")
                
                break;
            case 8:

                $("#pdf").attr("src", "../extra/apostila/Cap 8 - Argumentos e regras de inferência.pdf")
                
                break;
            case 9:

                $("#pdf").attr("src", "../extra/apostila/Cap 9 - Vereficação da validade.pdf")
                
                break;
            case 10:

                $("#pdf").attr("src", "../extra/apostila/Cap 10 - Demonstração condicional.pdf")
                
                break;
            case 11:

                $("#pdf").attr("src", "../extra/apostila/Cap 11 - Lógica de Predicados e sentençãs abertas.pdf")
                
                break;
            case 12:

                $("#pdf").attr("src", "../extra/apostila/Cap 12 - Quantificadores.pdf")
                
                break;
        
            default:
                break;
        }
    });
