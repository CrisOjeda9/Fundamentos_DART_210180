void main() async {
  print('Inicio del programa');

  try {
    // Realiza una petición HTTP asíncrona
    final value = await httpGet('https://fernando-herrera.com/cursos');
    // Si la petición es exitosa, imprime el valor recibido
    print('éxito: $value');

  } on Exception catch(err) {
    // Imprime cualquier excepción específica 
    print('Tenemos una Exception: $err');

  } catch (err) {
    // Imprime cualquier otro error.
    print('OOP!! algo terrible pasó: $err');

  } finally {
    //  se ejecuta independientemente de si hubo un error o no.
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

// Función asíncrona que simula una petición HTTP
Future<String> httpGet(String url) async {
  //  retraso de 1 segundo a.
  await Future.delayed(const Duration(seconds: 1));

  // Lanza una excepción de error en la petición
  throw Exception('No hay parámetros en el URL');

  // throw 'Error en la petición'; // Lanza un error intencionalmente.
  // return 'Tenemos un valor de la petición'; // Retorna un valor para evitar el error.
}
