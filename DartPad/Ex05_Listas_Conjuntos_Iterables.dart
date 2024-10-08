void main() {
  //Listas (LIST)
  // la declaracion de una LIST esta limitada por Corchetes (BRACKETS), y cada elemento debe ser individual y  puede repetirse 
  final numeros = [1,2,2,2,3,4,5,6,7,7,7,7,8,8,9,10];
  print("Ejemplo de LIST: $numeros");
  print("Confirmamos el tipo de dato para Numeros que es: ${numeros.runtimeType}");
  print("Podemos acceder a cierta informacion de una lista tal como");
  print("El tamaño: ${numeros.length}");
  print("""
  Para acceder a los elementos debemos especificar la posicion entre []
  El primer elemento en la primera posicion es : ${numeros[0]}
  El elemento en la segunda posicion es : ${numeros[1]}, siempre respetando la posicion -1
  El ultimo elemento de la lista seria: ${numeros[numeros.length-1]}
  -------------------------------------------------------------------------------------
  De igual manera existen las siguientes alternativas
  Primer elemento ${numeros.first}
  Ultimo elemento ${numeros.last}
  -------------------------------------------------------------------------------------
  Tambien tendremos acceso a algunos metodos que permiten la transformacion o filtrado del contenido
  Por ejemplo usar reversed, para invertir el orden original: ${numeros.reversed}
  Es importante observar que la funcion reversed ha transformado la LIST original y la retorna como un ITERABLE
  
  """);
   //Iterables(ITERABLES)
  final numerosAlreves = numeros.reversed;
  print("Los iterables son estructuras de datos que DART y otros lenguajes para optimizar en terminos de velocidad el acceso a los datos y propiedades");
  print("Ejemplo de un iterable $numerosAlreves");
  print("Confirmamos el tipo de dato para NUMEROSALREVES  que es: ${numerosAlreves.runtimeType}");
  print("De igual manera podemos transformar una LISTA en ITERABLE y viceversa");
  print("Convertimos el ITERABLE a LISTA usando .toList(): ${numerosAlreves.toList()} y verificamos su tipo de Dato ${numerosAlreves.toList().runtimeType}");
  //Conjunto de Datos (SET)
  //Un SET es una estructura  de dstos utilizada por DART, que simplifica los elementos  elminando los duplicados
  print("""Veamos que pasa con los Conjuntos (SET)
  Convertimos el ITERABLE en un SET usando .toSET: ${numeros.toSet()}
  Podemos visualizar en el resultado que el SET a eliminado los duplicados y ahora delimita los datos usando {},
  """);
  //De igual manera podemos realizar operaciones para el filtro de elementos usando .where()
  final numerosMayoresA5 = numeros.where((int num){return num > 5;});
  print("""Hemos filtrado sobre la LIST solo los elementos mayores a 5:
  Resultado de Filtro: ${numerosMayoresA5} 
  """);
 print("Eliminamos duplicados ... ${numerosMayoresA5.toSet()}");
  
}
