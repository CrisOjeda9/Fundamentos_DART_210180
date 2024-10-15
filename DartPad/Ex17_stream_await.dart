void main() {
  // Comienza el flujo de numeros
  emitNumber().listen((int value) {
    // Imprime cada número recibido
    print('Stream value: $value');
  });
}

Stream<int> emitNumber() async* {
  // Lista de números a emitir
  final valuesToEmit = [1, 2, 3, 4, 5];

  // accede de forma secuencial sobre cada número en la lista
  for (int i in valuesToEmit) {
    // Espera 1 segundo antes de emitir el siguiente número
    await Future.delayed(const Duration(seconds: 1));
    // Emite el número actual
    yield i;
  }
}
