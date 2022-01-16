boolean buttonClicked = false;
float itemNumber = 24;
ItemList iList = new ItemList();
ArrayList<Generation> generation = new ArrayList(); //liste over alle generationer
Graphics start = new Graphics();
void setup(){
size(900,600);
ArrayList<Genetic> startGene = new ArrayList();
for(int i = 0; i < 50; i++){
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
  buttonClicked = true;
  println("button clicked");
  }
}
  

public void evaluateGen(Generation R){//tager en arrayliste med 200 objekter, og laver en ny arrayliste med de bedste 50 objekter
  ArrayList<Genetic> winners = new ArrayList();
  float limitValue = R.sortScore();  for(int i = 0; i < R.generationX.size(); i++){
    if(R.generationX.get(i).score >= limitValue && winners.size()<55){
      winners.add(R.generationX.get(i));
   }
  }
  generateGeneration(winners);
}

void generateGeneration(ArrayList<Genetic> W){//Input list of 50 best. Outputs 200 new more accurate backpacks.
  ArrayList<Genetic> next = new ArrayList();
  for(int i = 0; i < W.size(); i++){ //<>//
    //println("først " + W.get(i).itemList);
    next.add(new Genetic(W.get(i).itemList));
    for(int m = 0; m < 5; m++){
      next.add(new Genetic(makeNew(W.get(i).itemList)));
    }
    //println("efter " + next.get(next.size()-1).itemList);
    //println("før " + W.get(i).itemList);
  } //<>//
  generation.add(new Generation(next));
}
public FloatList makeNew(FloatList iList){
    FloatList newGen;
    newGen = (FloatList)iList.copy();
    for(int i = 0; i < 4; i++){
      newGen.set(int(random(24)),new Float(int(random(2))));
    }
    return newGen;
  }
