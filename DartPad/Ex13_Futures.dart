void main() {
  print('Inicio del programa');
  //Peticion HTTP
  httpGet('https://fernando-herrera.com/cursos')
      .then((valor) {//se guarda la resuesta
        print(valor);
      })
      .catchError((err) { //Atrapa un error
        print('Error: $err');
      });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    // Devuelve un error en la petición HTTP
    throw 'Error en la petición http';

    // respuesta exitosa(descomentar la linea que sigue)
    // return 'Respuesta de la petición http';
  });
}
