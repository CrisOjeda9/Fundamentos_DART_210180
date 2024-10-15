void main() {
  // Se inicia el flujo de números 
  emitNumbers().listen((value) {
    // Cada vez que se emite un nuevo valor se imprime en la consola
    print('Stream value: $value');
  });
} 

Stream<int> emitNumbers() {
  // Se crea un stream que emite un número cada segundo
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //print('desde periodic $value');
    // Se devuelve el valor actual del contador
    return value;
  }).take(5); // Toma los primeros 5 elementos
}
