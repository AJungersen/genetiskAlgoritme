class Genetic{
  ArrayList<Float> itemList;
  float score;
  Genetic(ArrayList<Float> iList){
    itemList = iList;
    score = 0;
  }
  public ArrayList<Item> makeNew(){
    ArrayList<Float> newGen = itemList;
    newGen.set(random(int(newGen.size()),random(2));
    return newGen;
  }
  float getScore(ArrayList<Item> items){
    float value = 0;
    for(int i = 0; i < items.size(); i++){
      value += items.get(i).value;
    }
    return value;
  }
}