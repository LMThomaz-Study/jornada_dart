// Caracteristicas
// Comportamentos

// Os atributos ou métodos que pussuirem `static`, será de classe
//    quais não tiverem, serão de instancia

// Devemos ter muito cuidado com os atributos static, pois mudando em lugar da aplicação, será mudado em todos os demais
// Sempre que possível, devemos atribuir aos atributos static, como uma const

// Modificadores de acesso:
//  - Publico (public), sendo o padrão
//  - Privado (private), basta adicionar o "_" (underline), na frente do nome do método ou atributos, dando acesso apenas dentro do mesmo arquivo

class Camiseta {
  // Atributos => Caracteristicas
  String? tamanho;
  String? _cor; // Atributo privado
  String? marca;

  // Atributos de classe
  static const String nome = 'Camiseta';

  // Métodos => Comportamentos
  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }

  // Métodos de classe
  static String recuperarNome() => nome;

  // Método getter e setter para o atributo private
  // Geralmente necessário quando queremos ter alguma regra de negócio no getter ou setter
  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser Verde');
    }
  }
}
