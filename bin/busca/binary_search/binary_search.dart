import '../../utils/print_utils.dart';

List binarySearch(List lista, int item) {
  print('------ Start Binary Search -----');
  /*
   Baixoe e Alto acompanham a parte da lista que está sendo procurada
  */
  int baixo = 0;
  int alto = lista.length - 1;
  //  Posição 0, quantidade de tentativas | Posição 1, endereço do item
  List result = [
    0, // Posição 0, quantidade de tentativas
    null, // Posição 1, endereço do item
  ];

  while (baixo <= alto) {
    result[0] = result[0] + 1;
    // Enquanto não conseguir chegar a um único elemento
    int meio = (baixo + alto) ~/ 2; // Verifica o elemento do meio | central
    int chute = lista[meio];

    printBaixoMeioAlto(baixo, meio, alto);
    if (chute == item) {
      // Achou o Item?

      /* Sim, o item existe, o endereço do item é alterado para o valor encontrado */
      result[1] = meio;
      print('------ End Binary Search -----');
      return result; // Retorna result, sendo posição 0 a quantidade de tentativas para encontrar, e a posição 1, o endereço encontrado
    }
    if (chute > item) {
      // o chute foi muito alto
      alto = meio - 1;
    } else {
      // o chute foi muito baixo
      baixo = meio + 1;
    }
  }
  print('------ End Binary Search -----');
  return result; // O item não existe, a posição 0 informa a quantidade dentativas, e a posição 1, o endereço do item, sendo null, visto que não encontrou o dado
}
