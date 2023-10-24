import 'dart:async';

void main() {
  print('Inicio main');

  // Timer(Duration.zero, () => print(''));
  Timer.run(() {
    scheduleMicrotask(() {
      scheduleMicrotask(() {
        print('Nova MicroTask 1');
      });
    });
    print('Event 1');
  });
  Timer.run(() {
    print('Event 2');
  });
  Timer.run(() {
    print('Event 3');
  });

  scheduleMicrotask(() {
    print('MicroTask 1');
  });
  scheduleMicrotask(() {
    print('MicroTask 2');
  });

  print('Fim main');
}
