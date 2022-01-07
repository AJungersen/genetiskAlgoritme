class Generation{
  ArrayList<Genetic> generationX;
  float highScore;
  Generation(ArrayList<Genetic> G){
    generationX = G;
  }

  float sortScore(){
    float sorted = 0;
    FloatList toSort = new FloatList();
    for(int i = 0; i < generationX.size();i++){
      toSort.append(generationX.get(i).score);
    }
    toSort.sortReverse();
    sorted = toSort.get(50);
    return sorted;
  }
}
