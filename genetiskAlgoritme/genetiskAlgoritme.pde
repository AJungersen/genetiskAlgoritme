float itemNumber = 24;

void setup(){

}

void draw(){
println("Hello world");
}


  


void generateGeneration(ArrayList<Genetic> W){//Input list of 50 best. Outputs 200 new more accurate backpacks.
  ArrayList<Genetic> next = new ArrayList();
  for(int i = 0; i < W.size(); i++){

    for(int m = 0; m < 4; m++){
      next.add(new Genetic(W.get(i).makeNew()));
    }

  }
}
