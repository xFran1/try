let productos = [
    {
        nombre:"Leche",
        precio:"2€",
        foto:"img/leche.jpeg"
    },
    {
        nombre:"Pan",
        precio:"1.5€",
        foto:"img/pan.jpg"
    },
    {
        nombre:"Colacao",
        precio:"1.8€",
        foto:"img/colacao.jpg"
    }
    ,
    {
        nombre:"Fresas",
        precio:"3.2€",
        foto:"img/fresa.webp"
    }
    ,
    {
        nombre:"Peras",
        precio:"3.2€",
        foto:"img/pera.webp"
    }

    

]

let sesionIniciada=0;
let ProductosComprados=[]

// Función para iniciar sesión
function login() {
    // Obtiene el valor del input donde el usuario escribe su nombre
    var username = document.getElementById('username').value;
    // Verifica si el nombre de usuario está presente
    if (username.trim() !== "") {

        if(username.length<=8){
            alert("La contraseña tiene que tener mínimo 8 carácteres")
        }else{
        // Almacena el nombre de usuario en sessionStorage
        sessionStorage.setItem('username', username);
        // Inicializa una lista de compras vacía y la guarda en sessionStorage
        sessionStorage.setItem('shoppingList', JSON.stringify([]));
        // Actualiza el texto en pantalla para mostrar el nombre de usuario que ha iniciado sesión
        document.getElementById('sessionStatus').innerText = 'Sesión iniciada como: ' + username;
        // Alerta al usuario que la sesión ha sido iniciada
        alert('Sesión iniciada para ' + username);
        console.log("sesion=1")
        sesionIniciada=1;
        }
       
    } else {
        // Alerta al usuario para que ingrese un nombre si el campo estaba vacío
        alert('Por favor, ingresa un nombre');        
    }
}

let productosMostrar = document.getElementById("productosMostrar");
let recuento = document.getElementById("recuento");

window.addEventListener('load', function() {

    productos.forEach(elemento =>{
    agregarEntrada(elemento.nombre,elemento.foto);
    
        
});
     
});

function agregarEntrada(nombre,foto) {

    var divGrande = document.createElement("div");
    

    productosMostrar.appendChild(divGrande);

    var nuevoDiv = document.createElement("div");
    nuevoDiv.style.marginLeft="25px";
    nuevoDiv.innerHTML = nombre;
    console.log()
    
    var imagen = document.createElement("img");
    imagen.style.width="100px"
    imagen.style.height="100px"

    imagen.src = foto; 

    var botonComprar = document.createElement("button");
    botonComprar.style.marginLeft="32px"
    botonComprar.textContent = "🛒";

    sesionIniciada=1
    
        botonComprar.onclick = function() {
            if(sesionIniciada===1){
                var palabra = nuevoDiv.innerHTML;
                ProductosComprados.push(palabra);
                actualizarCesta();
               
            console.log("Ha sido comprado "+palabra)
        }else{
            alert("Debe iniciar sesión")
        }
        }; 
    
   
    divGrande.appendChild(document.createElement("br")); 
    divGrande.appendChild(nuevoDiv);
    
    divGrande.appendChild(document.createElement("br")); 
    divGrande.appendChild(imagen);

    divGrande.appendChild(document.createElement("br"));
    divGrande.appendChild(botonComprar);

}



function actualizarCesta(){
    let contador  = 0;
    let precio = 0;
    while (recuento.firstChild) {
        recuento.removeChild(recuento.firstChild);
    }
    productos.forEach(elemento =>{
        ProductosComprados.forEach(productoComprado =>{
            if(elemento.nombre===productoComprado){
                contador++;
                precio=elemento.precio;
            }

        });
        if(contador>0){
            var divGrande = document.createElement("div");
            precio=precio.replace("€","")
            contador=contador*precio
            contador=parseFloat(contador.toFixed(3));

            divGrande.textContent=elemento.nombre+" "+contador;
            recuento.appendChild(divGrande);
            precio =0 ;
            contador =0;
        }
       
    });
    
}
   




// Función para cerrar sesión
function logout() {
    // Elimina el nombre de usuario de sessionStorage
    sessionStorage.removeItem('username');
    // Elimina la lista de compras de sessionStorage
    sessionStorage.removeItem('shoppingList');
    // Actualiza el texto en pantalla para indicar que no hay sesión iniciada
    document.getElementById('sessionStatus').innerText = 'No hay ninguna sesión iniciada.';
    // Limpia el campo de texto del artículo
    document.getElementById('item').value = '';
    // Limpia también el campo del nombre de usuario
    document.getElementById('username').value = '';
    // Alerta al usuario que la sesión ha sido cerrada
    alert('Sesión cerrada');
    // Limpia cualquier mensaje anterior sobre la lista de compras
    document.getElementById('result').innerText = '';
    sesionIniciada=0;
    console.log("sesion = 0")
}