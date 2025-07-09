void main() {
  //Parametros Obrigatórios por default
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');

  //Parametros Nomeados
  //São nulos por default
  //Podem ser promovidos a non-null com checagem de null
  //                                        primeiro parametro & segundo parametro
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');
  //Posso escolher a ordem que os parametros são nomeados. Ex:

  //                                       segundo parametro & primeiro parametro
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero2: 10.2, numero1: 10.2)}');

  //Parametros obrigatórios, com a mesma flexibilidade dos anteriotes
  somaDoubleRequired(numero1: 5.2, numero2: 5.2);

  //Parametros obrigatórios, que podem ser nulos, mantendo a mesma
  //flexibilidade dos anteriotes
  somaDoubleRequired2(numero1: null, numero2: 20);

  //Prametros default (Já é definido um numero as variáveis, podendo ser 0)
  somaDoubleDefault(numero1: 0, numero2: 0);
  print('Chamado com parametros Defult: ${somaDoubleDefault()}');

  somaIntOpcional();

  parametrosNormaisComNomeados(1, nome: 'Erik', idade: 23);
}

//!Parametros Simples
int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

//!Parametros Nomeados
double somaDoubles({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

//!Parametros Obrigatórios
double somaDoubleRequired({required double numero1, required double numero2}) {
  return numero1 + numero2;
}

//!Parametros Obrigatórios e Nulos
double somaDoubleRequired2(
    {required double? numero1, required double numero2}) {
  numero1 ??= 0;
  //  if (numero1 == null){
  //  numero 1 = 0;
  //  }
  return numero1 + numero2;
}

//!Parametros Default
double somaDoubleDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

//!Parametros Opcionais
int somaIntOpcional({int numero1 = 0, int numero2 = 0}) {
  return numero1 + numero2;
}

//!Todos os Parametros Juntos

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}
