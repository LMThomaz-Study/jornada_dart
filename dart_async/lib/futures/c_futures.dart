void main() {
  // Future, pode ter 3 estados, sendo eles:
  //  -> Incompleto
  //  -> Completo com Sucesso
  //  -> Completo com Erro

  Future(() {
    // Função assincrona;
  })
      .then((value) {
    // Registrando função que será executada quando o futuro for completado com sucesso
    print('sucess');
  }).catchError((error) {
    // registrando função que será executada quando o futuro for completado com erro
  }).whenComplete(() {
    // Registrando função que será executada sempre que o futuro for completo (quando erro ou sucesso)
  });
}
