void main() {
  //! Map:
  // O mapa é uma representação de Chave/Valor.
  // É representado por uma '{}', assim como no .set, entretanto,
  // o .set somente é aplicando quando definido um tipo

  // Ex's:
  //!            CHAVE    VALOR
  // Map: {} | <String>, <String> {
  //             'nome':'Erik'}

  // .set: <int> {}

  final paciente = <String, String>{'nome': 'Erik Vieira', 'curso': 'Dart'};
  print(paciente);

  //O mapa pode ser nulo, mas se for criado deve conter a chave e o valor non-null
  Map<String, String>? pacienteNullSafety = null;
  print(pacienteNullSafety);

  //O map e o valor não pode ser nulo, mas a chave pode ser null
  var pacienteNullSafety2 = <String?, String>{null: 'Erik Vieira'};
  print(pacienteNullSafety2);

  //O map e a chave não pode ser nulo, mas o valor pode ser null
  var pacienteNullSafety3 = <String, String?>{'nome': null};
  print(pacienteNullSafety3);

  //! Adicionar e Alterar itens ao map:
  var produtos = <String, String>{};
  // Só sera adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'Bis');
  produtos.putIfAbsent('nome', () => 'Kit Kat');
  print(produtos);

  //Alterar o dado da Chave
  produtos.update('nome', (value) => 'Bis Extra');
  print(produtos);

  //! ifAbsent:
  // caso a chave não exista no mapa, o comando irá cria-la.
  produtos.update(
    'preco',
    (value) => '10',
    ifAbsent: () => '10',
  );
  //Recuperando o valor
  print('Produto é: ${produtos['nome']}');
  print('Produto é: ${produtos['preco']}');

  produtos.forEach((key, value) {
    print('Chave $key: $value');
  });
}
