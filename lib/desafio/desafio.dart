void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  print('1 - Remova os pacientes duplicados e apresente a nova lista');

  // A função .toSet removeu on itens duplicados da Lista
  // A função .map mapeou e separou os indices pelo caracter '|'
  // .toList alterou novamente em lista o que tinha sido transformada em map.
  final pessoasLeitura = pessoas.toSet().map((e) => e.split('|')).toList();
  // percorreu por toda linsta, convertendo em (p), e printando o indice 0 com o
  // => print(p[0])
  pessoasLeitura.forEach((p) => print(p[0]));

  // criou um map vazio com uma string e uma lista de string;
  final mapSexo = <String, List<String>>{};
  //varreu todos os indices da variavel pessoasLeitura
  for (var pessoa in pessoasLeitura) {
    //criou uma variável do sexo no indice 2 da lista
    final sexo = pessoa[2].toLowerCase();
    // Criou a variavel com a Chave do map 'M' e se for vazio, criar uma String com uma array
    final listaMasculino = mapSexo['M'] ?? <String>[];
    // Criou a variavel com a Chave do map 'F' e se for vazio, criar uma String com uma array
    final listaFeminino = mapSexo['F'] ?? <String>[];

    //Fez a comparação, adicionando a listaMasculino, o nome da pessoa pelo indice[0];
    if (sexo == 'masculino') {
      listaMasculino.add(pessoa[0]);
    }
    //Fez a comparação, adicionando a listaFeminino, o nome da pessoa pelo indice[0];
    if (sexo == 'feminino') {
      listaFeminino.add(pessoa[0]);
    }
    //Alimentou o valor de acordo com cada lista;
    mapSexo['M'] = listaMasculino;
    mapSexo['F'] = listaFeminino;
  }

  print('');
  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  //Criou uma variávei do map com a chave 'M', sendo null definido como uma String vazia
  final masculinos = mapSexo['M'] ?? <String>[];
  //Criou uma variávei do map com a chave 'F', sendo null definido como uma String vazia
  final femininos = mapSexo['F'] ?? <String>[];
  //printou quantos indices tem
  print('Masculinos (${masculinos.length})');
  masculinos.forEach(print);
  print('');
  //printou quantos indices tem
  print('Femininos (${femininos.length})');
  femininos.forEach(print);

  print('');
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  //Utilizou o .where para fazer um filtro
  final pessoasMaiores18 = pessoasLeitura.where((p) {
    //transformou variavel idade em int usando os dados do indice p[1]
    final idade = int.tryParse(p[1]) ?? 0;
    //retornou os usuarios maiores de 18
    return idade > 18;
    //transformou em lista novamente
  }).toList();
  //printou os indices 0 da variável pessoasMaiores18
  pessoasMaiores18.forEach((p) => print(p[0]));

  print('');
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');

//Criou uma nova lista para não alterar a lista original
  final pessoaOrdenada = [...pessoasLeitura];
  //iniciou uma ordenação de forma decrescente
  pessoaOrdenada.sort((p1, p2) {
    //converdeu a primeira idade em inteiro
    final idadeP1 = int.tryParse(p1[1]) ?? 0;
    //converdeu a segunda idade em inteiro
    final idadeP2 = int.tryParse(p2[1]) ?? 0;
    //coparou a segunda idade com a primeira, e retornou em ordem decrescente
    return idadeP2.compareTo(idadeP1);
  });
  //definiu a pessoa mais velha como a primeira da lista
  final pessoaMaisVelha = pessoaOrdenada.first;
  //definiu a pessoa mais nova como o ultimo da lista
  final pessoaMaisNova = pessoaOrdenada.last;
  print(
      'A pessoa mais velha é ${pessoaMaisVelha[0]} e tem ${pessoaMaisVelha[1]} anos');
  print(
      'A pessoa mais nova é ${pessoaMaisNova[0]} e tem ${pessoaMaisNova[1]} anos');
}
