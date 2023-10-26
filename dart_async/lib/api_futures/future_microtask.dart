void main() {
  print('Init Main');

  Future<String>(() => 'Future Normal').then(print);

  // A vantagem de abrir uma microtask pelo Future, é que podemos utilizar das funções do Future
  Future<String>.microtask(() => 'Future Microtask')
      .then(print)
      .catchError(print);

  print('End Main');
}
