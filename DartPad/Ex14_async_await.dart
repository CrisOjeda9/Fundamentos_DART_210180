void main() async {
  
  print('Inicio del programa');

  try {
    // Intenta realizar una petición HTTP asíncrona
    final value = await httpGet('https://fernando-herrera.com/cursos');
    // Si la petición es exitosa, imprime el valor recibido
    print(value);
  } catch (err) {
    // Si ocurre un error , lo imprime en un mensaje de error
    print('Tenemos un error: $err');
  }

  
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  // Simula un retraso de 1 segundo
  await Future.delayed(const Duration(seconds: 1));

  // Lanza un error intencionadamente
  throw 'Error en la petición';

  //Para evitar el error descoemntar la linea que sigue
  // return 'Tenemos un valor de la petición';
}
