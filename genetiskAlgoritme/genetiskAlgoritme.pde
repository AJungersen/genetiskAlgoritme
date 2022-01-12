float itemNumber = 24;
ItemList iList = new ItemList();
ArrayList<Generation> generation = new ArrayList(); //liste over alle generationer
Graphics start = new Graphics();
void setup(){
size(900,600);
ArrayList<Genetic> startGene = new ArrayList();
for(int i = 0; i < 500; i++){
  ArrayList<Float> f = new ArrayList();
  for(int m = 0; m < itemNumber; m++){
    f.add(random(1));
  }
  startGene.add(new Genetic(f));
}
generation.add(new Generation(startGene));
}

void draw(){
start.drawButton();
evaluateGen(generation.get(generation.size()-1));

for(int i = 0; i < 2; i++){
println(generation.get(i).highScore);
}

}

void mouseClicked(){
  println(mouseX + " " + mouseY);
  if(mouseX < 250 && mouseY > 550){
  //code for starting calculations
  println("button clicked");
  }
}
  

public void evaluateGen(Generation R){//tager en arrayliste med 200 objekter, og laver en ny arrayliste med de bedste 50 objekter
  ArrayList<Genetic> winners = new ArrayList();
  float limitValue = R.sortScore();
  for(int i = 0; i < R.generationX.size(); i++){
    if(R.generationX.get(i).score>limitValue){
      winners.add(R.generationX.get(i));
   }
  }
  generateGeneration(winners);
}

void generateGeneration(ArrayList<Genetic> W){//Input list of 50 best. Outputs 200 new more accurate backpacks.
  ArrayList<Genetic> next = new ArrayList();
  for(int i = 0; i < W.size(); i++){
    for(int m = 0; m < 5; m++){
      next.add(new Genetic(W.get(i).makeNew()));
    }
  }
  generation.add(new Generation(next));
}
