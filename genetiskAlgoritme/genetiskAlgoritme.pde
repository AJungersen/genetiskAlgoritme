float itemNumber = 24;
ItemList iList = new ItemList();
void setup(){

}

void draw(){
println("Hello world");
}


  

public void evaluateGen(ArrayList<Genetic> R){//tager en arrayliste med 200 objekter, og laver en ny arrayliste med de bedste 50 objekter
  for(int i = 0; i < R.size(); i++){
    if(getWeight(R.get(i).itemList)<5000){
    
    }
    //if(getScore(R.get(i).itemList)>
  }
}

float getWeight(ArrayList<Float> g){
  float lightBack = 0;
  for(int i = 0; i<g.size();i++){
  lightBack += g.get(i)*iList.listOfItems.get(i).weigth;
  }
  
  
  return lightBack;
}

float getScore(ArrayList<Float> f){
  float gottenFloat = 0;
  
  return gottenFloat;
}

void generateGeneration(ArrayList<Genetic> W){//Input list of 50 best. Outputs 200 new more accurate backpacks.
  ArrayList<Genetic> next = new ArrayList();
  for(int i = 0; i < W.size(); i++){

    for(int m = 0; m < 4; m++){
      next.add(new Genetic(W.get(i).makeNew()));
    }

  }
}
