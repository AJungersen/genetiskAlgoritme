class Genetic{
  ArrayList<Float> itemList;
  float score;
  Genetic(ArrayList<Float> iList){
    itemList = iList;
    score = getScore(iList);
  }
  public ArrayList<Float> makeNew(){
    ArrayList<Float> newGen = itemList;
    newGen.set(int(random(newGen.size())),new Float(random(2)));
    return newGen;
  }
  float getScore(ArrayList<Float> items){
    float value = 0;
    if(getWeight(items)<5000){
      for(int i = 0; i < items.size(); i++){
      value += items.get(i)*iList.listOfItems.get(i).value;
      }
    }
    return value;
  }
  
  float getWeight(ArrayList<Float> g){
  float lightBack = 0;
  for(int i = 0; i<g.size();i++){
  lightBack += g.get(i)*iList.listOfItems.get(i).weigth;
  }
  return lightBack;
}
}
