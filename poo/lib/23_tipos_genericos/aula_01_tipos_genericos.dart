// ignore_for_file: unused_local_variable

void main() {
  List<int> numeros = [1, 2, 3];
  Map<String, int> mapa = {'chave': 0};
  numeros.add(2);

  final caixa = Caixa<Bola>();
  caixa.adicionar(Bola());
  Bola? itemBola = caixa.getItem();
  print(caixa.alturaItem());

  final caixaDeBoneca = Caixa<Boneca>();
  caixaDeBoneca.adicionar(Boneca());
  Boneca? itemBoneca = caixaDeBoneca.getItem();
  print(caixaDeBoneca.alturaItem());
}

// class Caixa {
//   dynamic item;

//   void adicionar(Bola bola) {
//     item = bola;
//   }

//   void adicionarBoneca(Boneca boneca) {
//     item = boneca;
//   }

//   List<dynamic> getItem() {
//     return item;
//   }
// }

abstract class Item {
  double altura();
}

class Caixa<I extends Item> {
  // o extends força que a classe dinâmica I, seja filha de Item
  I? _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }

  double alturaItem() {
    return _item?.altura() ?? 0; // Acessando a propriedade da classe extendida
  }
}

class Bola extends Item {
  @override
  double altura() {
    return 20.0;
  }
}

class Boneca extends Item {
  @override
  double altura() {
    return 60.0;
  }
}

class Telefone extends Item {
  @override
  double altura() {
    return 80.0;
  }
}

class Computador {}
