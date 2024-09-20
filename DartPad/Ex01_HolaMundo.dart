void main() {
  //declarando una variable generica para almacenar el nombre
    var myName="Cristian";
    String myLastName='Ojeda';
    final int myDNI = 210180;
    late final int myAge;
  
  myName = "Cristian Eduardo";
  //myDNI= 210180; // Esto ocasiona un error por que la variable esta definida como final y no puede ser modificada
  print('Hola $myName $myLastName');
  
  print('Hola, $myName $myLastName, tu matricula es : $myDNI y tu edad aun no la conozco, porque no se cuando naciste');
   print('\nHola, ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es : $myDNI y tu edad aun no la conozco, porque no se cuando naciste');
}
