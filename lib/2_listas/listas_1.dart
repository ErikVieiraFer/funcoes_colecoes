void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  //Expand
  //Array Bidimencional
  print('Array Bidimencional');
  var lista = [
    [1, 2],
    [3, 4],
  ];

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  //!.any (Busca determindado indice dentor da variável)
  print('any');
  final listaBusca = ['Erik', 'Jamyli', 'Luzia'];
  if (listaBusca.any((nome) => nome == 'Erik')) {
    print('Tem Erik');
  } else {
    print('Não tem Erik');
  }

  //!.every
  final listaBusca2 = ['Erik', 'Jamyli', 'Luzia'];
  if (listaBusca2.every((nome) => nome.contains('J'))) {
    print('Todos os nomes tem J');
  } else {
    print('Nem todos os nomes tem a Letra J.');
  }

  //!.sort
  print('.sort');
  var listaParaOrdenacao = [99, 22, 10, 765, 1, 26, 16, 17, 300, 100];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaPacientes = [
    'Erik | 23',
    'Jamyli | 21',
    'Beatriz | 5',
    'Lara | 5',
    'Luzia | 54'
  ];

  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);
    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPacientes);

  //! .sort com CompareTo

  print('.sort com CompareTo');
  var listaPacientes2 = [
    'Erik | 23',
    'Jamyli | 21',
    'Beatriz | 5',
    'Lara | 5',
    'Luzia | 54'
  ];

  listaPacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes);
}

void printAcademia(Object valor) {
  print(valor);
}
