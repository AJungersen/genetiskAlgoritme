class Generation{
  ArrayList<Genetic> generationX;
  float highScore; //Denne generations bedste resultat
  FloatList highScoreItems;
  Generation(ArrayList<Genetic> G){
    generationX = G;
    highScore = 0;
  }

  float sortScore(){
    float sorted = 0;
    FloatList toSort = new FloatList();
    for(int i = 0; i < generationX.size();i++){
      toSort.append(generationX.get(i).score);
    }
    toSort.sortReverse();
    sorted = toSort.get(15);
    highScore = toSort.get(0);
    
    return sorted;
  }
}
