class Genetic{
  FloatList itemList;
  float score;
  Genetic(FloatList iList){
    itemList = iList;
    score = getScore(iList);
  }
  float getScore(FloatList items){
    float value = 0;
    if(getWeight(items)<5000){
      for(int i = 0; i < items.size(); i++){
      value += items.get(i)*iList.listOfItems.get(i).value;
      }
    }
    return value;
  }
  
  float getWeight(FloatList g){
  float lightBack = 0;
  for(int i = 0; i<g.size();i++){
  lightBack += g.get(i)*iList.listOfItems.get(i).weigth;
  }
  return lightBack;
}
}
