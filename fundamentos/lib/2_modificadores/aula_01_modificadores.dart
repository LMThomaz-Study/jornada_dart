// ignore_for_file: unused_local_variable

void main() {
  var nomeCompleto = 'Leonardo';

  nomeCompleto = 'Leonardo Thomaz';

  print(nomeCompleto);

  // TIPO -> final
  // Após ser criado, será impossível ser alterado
  // Utilizar sem moderação, tornando-as imutáveis
  final nomeCompletoFinal = 'Leonardo Thomaz';
  // -> Erro ao tentar mudar o valor da vairável: nomeCompletoFinal = 'Leonardo';

  // Podemos criar a variável e depois inicializar, porém não é muito recomendado
  final String nomeCompletoDelayFinal;
  nomeCompletoDelayFinal = 'Leonardo Thomaz';

  // TIPO -> const
  // Após ser criado, será impossível ser alterado
  // Utilizar sem moderação, tornando-as imutáveis
  // A sua peculiaridade é que ela precisa estar com valor já no momento de compilação do projeto, assim definindo os valores para variáveis já no build da aplicação
  // Sempre que possível, utilizar o `const`
  const nomeCompletoConst = 'Leonardo Thomaz';

  // Exemplo de erro: Não podemos definir valores inesperados ou variáveis, devem ser sempre fixos
  // -> const nomeCompletoConstErro = nomeCompleto;

  // Exemplo de sucesso: Podemos criar uma `const` atráves de outra `const`
  const nomeCompletoConst02 = nomeCompletoConst;
}
