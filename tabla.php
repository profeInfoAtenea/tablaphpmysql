<?php

try {
$servername = "localhost";
$username = "root";
$password = "";
$database = "Ventas";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully <br>";

/* mostrar información del host */
printf("Host info: %s <br>", $conn->host_info);

/* Consultas de selección que devuelven un conjunto de resultados */
if ($resultado = $conn->query("SELECT * FROM CLIENTES")) {
    printf("La selección devolvió %d filas.\n", $resultado->num_rows);
    
    printf("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3' crossorigin='anonymous'>");

    /**TODO: Actividad: Añadir más columnas y cambiar estilo CSS de la tabla Bootstrap*/
   printf("<table class='table'>");
    /* obtener el array de objetos */
    while ($fila = $resultado->fetch_row()) {
        printf ("<tr><td>%s</td><td>%s</td><td>%s</td> </tr>", $fila[0], $fila[1],$fila[2]);
    }
     printf("</table>");
}
echo "<br>";
var_dump($resultado );

/* liberar el conjunto de resultados */
$resultado->close();
	
/* cerrar conexión */
$conn->close();

	
} catch (Exception $e) {
    echo 'Excepción capturada: ',  $e->getMessage(), "\n";
}






