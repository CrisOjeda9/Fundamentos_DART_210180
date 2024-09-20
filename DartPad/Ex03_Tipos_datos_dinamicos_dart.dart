
void main(){
//Practica 05
dynamic errorMessage;
print("""El valor inicial de errorMessage es: $errorMessage 
Que por defecto permite establecer valores nulos""");

errorMessage = "El usuario y la contraseña no coincide";
print("""
El nuevo valor de errorMessage es: $errorMessage
En este caso le fue asignado un String""");

errorMessage = 404;
print("""
El nuevo valor de errorMessage es: $errorMessage
Cuando el sistema funciona correctamente el mensaje de error puede ser FALSO""");

errorMessage = [400,404,500,502,505];
print("""
El nuevo valor de errorMessage es: $errorMessage
En caso de que el sistema detecte varios errores podria agregarlos a una lista""");

errorMessage = {125,"Usuario no encontrado",true,-1025.16,'A'};
print("""
El nuevo valor de errorMessage es: $errorMessage
O incluso como un conjunto (SET) de datos""");

errorMessage = () => true;
print("""
El nuevo valor de errorMessage es: $errorMessage
Que en este caso es el resultado de una funcion""");
}
