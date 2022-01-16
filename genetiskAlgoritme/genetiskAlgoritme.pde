float itemNumber = 24;
ItemList iList = new ItemList();
ArrayList<Generation> generation = new ArrayList(); //liste over alle generationer
Graphics start = new Graphics();
void setup(){
size(900,600);
ArrayList<Genetic> startGene = new ArrayList();
for(int i = 0; i < 500; i++){
  FloatList f = new FloatList();
  for(int m = 0; m < itemNumber; m++){
    f.append(float(int(random(2))));
    //println(f.get(f.size()-1));
  }
  startGene.add(new Genetic(f));
}
generation.add(new Generation(startGene));
}

void draw(){
evaluateGen(generation.get(generation.size()-1));

println(generation.get(generation.size()-2).highScore);

start.drawButton();
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
  float limitValue = R.sortScore();  for(int i = 0; i < R.generationX.size(); i++){
    if(R.generationX.get(i).score >= limitValue){
      winners.add(R.generationX.get(i));
   }
  }
  print("winners");
  for(int i = 0; i < winners.size();i++){
    print(winners.get(i).score + " ");
  }
  println();
  generateGeneration(winners);
}

void generateGeneration(ArrayList<Genetic> W){//Input list of 50 best. Outputs 200 new more accurate backpacks.
  ArrayList<Genetic> next = new ArrayList();
  for(int i = 0; i < W.size(); i++){
    for(int m = 0; m < 10; m++){
      next.add(new Genetic(makeNew(W.get(i).itemList)));
    }
  }
  generation.add(new Generation(next));
}
public FloatList makeNew(FloatList iList){
    FloatList newGen = iList;
    for(int i = 0; i < 1; i++){
      println("før   " + newGen);
      newGen.set(int(random(newGen.size())),new Float(int(random(2))));
      println("efter " + newGen);
    }
    return newGen;
  }
