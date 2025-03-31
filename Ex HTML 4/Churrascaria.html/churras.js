function FazerReserva(){

    var nome = document.getElementById("nomereserva").value;

    var email = document.getElementById("emailreserva").value;

    var telefone = document.getElementById("telreserva").value;

    var data = document.getElementById("datareserva").value;

    var hora = document.getElementById("horareserva").value;

        if(nome.value === ""){
            alert("nome em branco");
            nome.focus();
            return false;
        }

        if(email.value === ""){
            alert("E-mail em branco!");
            email.focus();
            return false;
        }

        if(telefone.value === ""){
            alert("E-mail em branco!");
            email.focus();
            return false;
        }

        if (data.value === "") {
            alert("Data em branco!");
            data.focus();
            return false;
        }
    
        if (hora.value === "") {
            alert("Hora em branco!");
            hora.focus();
            return false;
        }

        alert("Reserva realizada com sucesso!");
        return true;

};