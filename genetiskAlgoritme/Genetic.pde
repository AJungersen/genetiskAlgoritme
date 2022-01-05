class Genetic{
  ArrayList<Item> itemList;
  float score;
  Genetic(ArrayList<Item> iList){
    itemList.addAll(iList);
    score = 0;
  }
  public ArrayList<Item> makeNew(){
    ArrayList<Item> newGen = itemList;
    if(random(3) == 1){
      newGen.add(getItems(int(random(itemNumber))));
    } else if(random(2) == 1){
        newGen.remove(random(newGen.size()));
    }
    else{
      newGen.remove(random(newGen.size()));
      newGen.add(getItems(int(random(itemNumber))));
    }
    return newGen;
  }
}
