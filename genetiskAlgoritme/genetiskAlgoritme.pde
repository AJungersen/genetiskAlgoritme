float itemNumber = 24;
ItemList iList = new ItemList();
ArrayList<Generation> generation = new ArrayList();
void setup(){

}

void draw(){
println("Hello world");
}


  

public void evaluateGen(Generation R){//tager en arrayliste med 200 objekter, og laver en ny arrayliste med de bedste 50 objekter
  float limitValue = R.sortScore();
  for(int i = 0; i < R.generationX.size(); i++){
    if(R.generationX.get(i).score>limitValue){
        
    }
  }
}

void generateGeneration(ArrayList<Genetic> W){//Input list of 50 best. Outputs 200 new more accurate backpacks.
  ArrayList<Genetic> next = new ArrayList();
  for(int i = 0; i < W.size(); i++){
    for(int m = 0; m < 4; m++){
      next.add(new Genetic(W.get(i).makeNew()));
    }
  }
  generation.add(new Generation(next));
}
