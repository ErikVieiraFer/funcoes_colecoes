void main() {
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(2);
  numerosLista.add(1);
  print(numerosLista);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(2);
  numerosSet.add(1);
  print(numerosSet);

//! .toSet:
//Faz a junção das 2 variaveis sem repetir indices iguais

  print('.toSet');
  print(numerosLista.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

//! .difference:
//Apresenta os numeros diferentes que tem na variavel numero1
// da variavel numero 2.
//Ex: {2, 5, 6}
  print('.difference');
  print(numeros1.difference(numeros2));

//! .union:
//Junta as duas variaveis.
  print('.union');
  print(numeros1.union(numeros2));

//! .intersection:
//Apresenta os dados em comuns das duas variáveis.
//Ex: {1, 3, 4}
  print('.intersection');
  print(numeros1.intersection(numeros2));

//! .lookup:
//Busca um indice identico ao indice de comparação
//Ex: Não encontrou nada igual e retornou null
  print('.lookup');
  print(numeros1.lookup(99));
}
