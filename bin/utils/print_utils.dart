void printBaixoMeioAlto(baixo, meio, alto) {
  print('---------------------------------');
  print('Baixo: $baixo');
  print('Meio: $meio');
  print('Alto: $alto');
}

void printResults(List myList, int itemToSearch, List resultByFunction) {
  int len = myList.length;
  int lenLimit = 100000; // cem mil

  print('------ Start printResults -----');
  print('O len da minha lista é: ${len.toString()}.');
  if (len < lenLimit) {
    print('Minha lista é: ${myList.toString()}.');
  } else {
    print('Lista maior que o len limite ($lenLimit items)');
  }
  print('O item procurado é: $itemToSearch.');
  print('A posição na lista é: ${resultByFunction[1].toString()}.');
  print('Foi necessário ${resultByFunction[0].toString()} tentativas.');
  print('------ End printResults -----');
}
