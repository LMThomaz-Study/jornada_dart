import 'dart:async';

void main() {
  print('iniciando main');
  func1(1);
  func1(2);
  func1(3);
  func2();
  print('finalizando main');
}

void func1(int i) {
  print(' iniciando func1');
  Future.delayed(
    Duration(seconds: 2),
    () => print('fazendo algo complexo func1 -> $i'),
  );
  print(' finalizando func1');
}

void func2() {
  print(' iniciando func2');
  Future.delayed(
    Duration(seconds: 1),
    () => print('fazendo algo complexo func2'),
  );
  print(' finalizando func2');
}
