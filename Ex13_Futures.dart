void main() {
  print('Inicio del programa');
  //Peticion HTTP
  httpGet('https://fernando-herrera.com/cursos')
      .then((valor) {
        print(valor);
      })
      .catchError((err) { //Atrapa un error
        print('Error: $err');
      });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    // Error en la petición HTTP
    throw 'Error en la petición http';

    // espuesta exitosa
    // return 'Respuesta de la petición http';
  });
}
