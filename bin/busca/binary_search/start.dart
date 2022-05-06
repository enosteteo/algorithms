import '../../utils/generator_of_items.dart';
import '../../utils/print_utils.dart';
import 'binary_search.dart';

void main(List<String> arguments) {
  print('------ Start Application -----');

  int itemToSearch = 1; // Item a ser procurado
  List myList = generateListWithIntValuesAtValue(
    10,
  ); // gera uma lista com os valores de 1 a X

  List resultByFunction = binarySearch(
    myList,
    itemToSearch,
  ); /* efetua a busca binária e tem como retorno uma lista com 2 items, sendo a
  posição 0, a quantidade de tentativas, e a posição 1, o endereço encontrado
  (pode ser null, caso não encontre o item dentro da lista.)
  */
  printResults(myList, itemToSearch, resultByFunction);
  print('------ End Application -----');
}
