function aparecerPaneles() {
    var pnlCliente = $("#pnlCliente");
    var pnlRestaurant = $("#pnlRestaurant");

    var pnlClienteNormal = document.getElementById("pnlCliente");
    var pnlRestaurantNormal = document.getElementById("pnlRestaurant");


    var ddlSeleccionTipoUsuario = document.getElementById("ddlSeleccionTipoUsuario");
    var valorSeleccionado = ddlSeleccionTipoUsuario.value;

    switch (valorSeleccionado) {
        case "0":
            pnlCliente.fadeOut(10);
            pnlRestaurant.fadeOut(10);
            break;
        case "1":
            pnlCliente.fadeIn();
            pnlClienteNormal.className = "azul";
            pnlRestaurant.fadeOut(10);
            break;
        case "2":
            pnlCliente.fadeOut(10);
            pnlRestaurant.fadeIn();
            pnlRestaurantNormal.className = "rojo";
            break;
    }

}