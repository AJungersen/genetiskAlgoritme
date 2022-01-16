class Generation{
  ArrayList<Genetic> generationX;
  float highScore; //Denne generations bedste resultat
  FloatList highScoreItems;
  String[] HSIarray;
  int numberItems;
  Generation(ArrayList<Genetic> G){
    generationX = G;
    highScore = 0;
  }

  float sortScore(){
    float sorted = 0;
    FloatList toSort = new FloatList();
    highScoreItems = new FloatList();
    for(int i = 0; i < generationX.size();i++){
      toSort.append(generationX.get(i).score);
      highScoreItems.append(generationX.get(i).itemList);
    }
    toSort.sortReverse();
    HSIarray = new String[highScoreItems.size()];
    for(int i = 0; i < 24; i++){
      HSIarray[i] = iList.listOfItems.get(i).itemName;
    }
    sorted = toSort.get(15);
    highScore = toSort.get(0);
    return sorted;
  }
}
