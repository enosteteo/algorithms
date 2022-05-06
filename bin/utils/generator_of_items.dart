List<int> generateListWithIntValuesAtValue(int endValue) {
  print('------ Start Generate List With Int Values At Value -----');
  List<int> generatedList = populateList(<int>[], 1, endValue);
  print('------ End Generate List With Int Values At Value -----');
  return generatedList;
}

List<int> populateList(List<int> listToPopulate, int startValue, int endValue) {
  print('------ Start Populate List -----');
  do {
    listToPopulate.add(startValue);
    startValue++;
  } while (listToPopulate.last < endValue);

  print('------ End Populate List -----');
  return listToPopulate;
}
