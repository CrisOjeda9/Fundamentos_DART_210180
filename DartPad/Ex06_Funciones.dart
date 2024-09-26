void main() {
  final double totalCarList;
  //1. Llamado de una funcion sin parametros
  greetEveryone();
  //2. Llamado de una funcion que retorna valores
  //a) sin almacenar el valor de una variable
  print("Hoy es el dia numero: ${getDayNumber()} del mes");
  //b) almacenando el valor de la funcion en una nueva variable
  final int DiaMes;
  DiaMes= getDayNumber();
  print("En tres dias sera: ${DiaMes+3}");
  //3. Llamado de una funcion con un solo parametro obligatorio
  //a. llamado correcto
  print(greetSomeone("Cristian Ojeda"));
  //b. En caso de que la funcion este declara como dynamic
  print(greetSomeone(4));
  print(greetSomeone(-312));
  print(greetSomeone(3.1416));
  print(greetSomeone(true));
  print("----------------------------------------------------------------------------------------------------------");
  //3.1.Mismo experimento pero ahora con la funcion con parametros tipados
 /* print(greetSomeoneTyped("Cristian Ojeda"));
  print(greetSomeoneTyped(4));
  print(greetSomeoneTyped(-312));
  print(greetSomeoneTyped(3.1416));
  print(greetSomeoneTyped(true));*/

  //3.2
  //print(greetSomeone()); //Esta no se puede ejecutar porque si no se define los parametros de una funsion por default estan definidos como obligatorios

  //4. Llamado de una funcion con parametros opcionales.
  //4.1 Enviando ambos parametros
  print(greetHourOfDay("Cristian",20));
  //4.2 solo enviando el obligatorio
  print(greetHourOfDay("Cristian",null));


  

  //5. Funciones Lambda - Las funciones lambda, mejor conocidas como funciones simplificadas, se ejecutan de manera simple y no frcuente en la ejecucion de un programa o sistema
  var calculaCosto=(double productQuantity, double productPrice, double percentageDiscount ) => (productQuantity * productPrice)*((100-percentageDiscount)/100);
  double cantidadProducto = 5;
  double precioProducto = 125.50;
  double descuento = 2.5;
  print("""
  Costo del producto: ${precioProducto}
  Cantidad: ${cantidadProducto}
  Descuento: ${descuento}
  -------------------------------------------------------------------------
  Costo del carrito de compras: ${calculaCosto(cantidadProducto,precioProducto,descuento)}
  """);
//6. Llamado de una funcion con parametros nombre
print(infoCarListStatus(buyerName: "Cristian"));
  
  print(infoCarListStatus(
    status: "En espera de pago",
    amountCarList: 2416.20,
    buyerName: "Myriam"
  ));
}

// funciones y parametros

//declaracion
//1. funcion sin parametros, sin retorno de valor

void greetEveryone()
{
  print("Hola a todos");
}
//2. Funcion sin parametros, que retorna datos

int getDayNumber()
{
    DateTime now = DateTime.now();
    int day = now.day;
    return day;
}

//3. Funcion que recibe un parametro, en Dart si no se especifica como opcional siempre sera obligatorio

String greetSomeone(personName)
{
    return("Hola, ${personName}");
}

//3.1 Tipando el parametro de entrada

String greetSomeoneTyped(String personName)
{
    return("Hola, ${personName}");
}
//4. Funcion con parametros opcionales



//int? Puede ser opcional - NullSafety
String greetHourOfDay(String personName, int? hora)
{
  //el operador ??= significa que si es nulo lo inicialice como, en caso de que tenga el valor  ignora la instruccion
    hora ??= DateTime.now().hour; // si es nulo entonces...
    print("Hora: ${hora}");
    String saludo;

    if(hora>=6 && hora<12)
    {
        saludo = "Buenos dias";
    }
    else if(hora>12 && hora < 18)
    {
        saludo="Buenas tardes";
    }
    else
    {
        saludo="Buenas noches";
    }

    return "${saludo}, ${personName}";





  
  
}
//las funciones flechas en dart solo pueden llevar una sola instruccion

// 6 Funciones con parametros nombrados

String infoCarListStatus(
  {required String buyerName,
  double amountCarList = 0.0,
  String status = "Seleccion de productos"}) {
  return "El carrito de compras de: ${buyerName}, tiene un total de: \$${amountCarList} y actualmente esta en estatus: ${status}";
  }