void main() {
//Funcoes Arrow
//Funcoes Anonimas
//Typeder (Tipo Definido)
  // var nome = '';
  // var idade = 1;

  var funcaoQualquer = () {
    print('Chamou a funcão da variavel');
  };
  print(funcaoQualquer());

  //Não esta invocando a função
  //somaInteiros;

  print(somaInteiros(10, 10));
}

//3 Partes
//1 Tipo de retorno
//2 Nomes
//3 parâmetros (normais, nomeados e opcionais)

int somaInteiros(int numero1, int numero2) => numero1 + numero2;

void chamarUmFuncalDeUmParametro(Function(String nome) funcaoQueRecebeNome) {
  //var calculo = 1 + 1;
  var nomeCompleto = 'Erik Vieira';
  funcaoQueRecebeNome(nomeCompleto);
}

typedef funcaoQueRecebeNome = void Function(String nome);
