void main() {
  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {}

// Antes da versão 2.15
  var azul = 'azul';
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
  print(corAzul);

// Da versão 2.15 em diante

  print(Cores.azul.name);

//conversao
  var azul215 = Cores.values.byName(azul);
  print(azul215);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corAzulMap = coresNameMap[azul];
  print(corAzulMap);
}

enum Cores { azul, vermelho, laranja, verde, preto }
