# Semantic Versioning

O Semantic Versioning (Semântica de Versionamento) tem como próposito fazer com que independete do idioma ou lugar fazer com que seja compriensivel resumidamente o que houve de mudança no projeto. Agora vamos entender como funciona e como trabalhar com a semântica de versionamento.

## Nome de cada casa

Cada casa da versão tem um nome, e um propósito que será explicado mais a frente, numa versão inicial e padrão `1.0.0` os nomes são `major.minor.path`.
Vamos explanar o que cada casa define em nosso projeto.

### Major

A versão principal, quando fazemos alterações no qual o código não é compátivel com a versão anterior. As famosas Break Changes, onde precisamos mudar algumas funcionalidades, seja poucas ou todas. 
Vale ressaltar que quando estamos sem uma versão de produção, por boas práticas, devemos utilizar o valor de `0`, ou seja, `0.n.n`. Quando o projeto for para produção devemos mudar a versão principal para `1`, ou seja, `1.n.n`, assim estamos dizendo que temos agora uma versão para utilizamos em produção e estável.

### Minor

Novas funcionalidades foram adicionadas, porém o código é "totalmente compatível" com versões anteriores, onde não há necessidade de alterar o código já existente (em caso de packages).
Algumas pessoas adicionam Break Changes, porém essa não é uma boa prática.

### Path

Essa tag é alterada quando fazemos correções de Bugs e o código continua compatível com a versão anterior.
Caso essa alteração afete a forma que o código seja implementado (em casos de packages) essa nova versão deve ser alterado no Major.
