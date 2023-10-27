# Versionamento dos Packages

### Any ou Vazio

Isso resultará na definição da versão do pacote como a mais recente ou na descoberta de qual versão deve ser usada em relação às outras restrições de pacotes.

```yml
dependencies:
  bloc:
  bloc: any
```

### <, >, <=, >=

Permite escolher versões inferiores, superiores, inferiores e iguais ou superiores e iguais à versão estipulada
```yml
dependecies:
  # Inferior a versão 8.0.0
  bloc: '<8.0.0' 
  # Superior a versão 8.0.0
  bloc: '>8.0.0'
  # Inferior ou igual a versão 8.0.0
  bloc: '<=8.0.0' 
  # Superior ou igual a versão 8.0.0
  bloc: '>=8.0.0' 
   # Superior a versão 8.0.0 e Inferior a versão 10.0.0
  bloc: '>8.0.0 <10.0.0'
  # Superior ou igual a versão 8.0.0 e Inferior ou igual a versão 10.0.0
  bloc: '>=8.0.0 <=10.0.0' 
```

### ^Version

Significa a mais atual seguindo uma regra especifica.

```yml
dependecies:
  bloc: '^8.1.0' 

```

Para dependencias que não possuem uma versão principal `1.x.x` o Dart Buscará versões contidas na mesma versão secundária.

```yml
dependecies:
  # Isso irá buscar qualquer versão dentro do range 0.12.x
  # Seria o mesmo que:
  # bloc: '>=0.12.3 <0.13.0'
  # bloc: '>=0.0.3 <0.1.0' # Pior cenário possível
  bloc: '^0.12.3' 

```

Para dependencias que possuem uma versão princípal `1.x.x` o Dart buscará versões contidas na mesma versão princípal.

```yml
dependecies:
  # Isso irá buscar qualquer versão dentro do range 2.x.x
  # Seria o mesmo que:
  # bloc: '>=2.12.3 <3.0.0'
  bloc: '^2.12.3' 
```

