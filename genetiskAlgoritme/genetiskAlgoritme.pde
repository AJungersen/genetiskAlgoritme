float itemNumber = 15;

void setup(){

}

void draw(){
println("Hello world");
}

Item getItems(int n){
  ArrayList<Item> listOfItems = new ArrayList<Item>();
  listOfItems.add(new Item("kort", 150, 90));
  listOfItems.add(new Item("kompas", 35, 130));
  listOfItems.add(new Item("vand", 200, 1530));
  listOfItems.add(new Item("sandwich", 160, 500));
  listOfItems.add(new Item("sukker", 60, 90));
  listOfItems.add(new Item("dåsemad", 45, 130));
  listOfItems.add(new Item("banan", 60, 1530));
  listOfItems.add(new Item("æble", 40, 500));
  listOfItems.add(new Item("ost", 30, 90));
  listOfItems.add(new Item("øl", 10, 130));
  listOfItems.add(new Item("solcreme", 70, 1530));
  listOfItems.add(new Item("kamera", 30, 500));
  listOfItems.add(new Item("T-shirt", 15, 90));
  listOfItems.add(new Item("bukser", 10, 130));
  listOfItems.add(new Item("paraply", 40, 1530));
  listOfItems.add(new Item("vandtætte bukser", 70, 500));
  listOfItems.add(new Item("vandtæt overtøj", 75, 90));//nået til pris her
  listOfItems.add(new Item("pung", 35, 130));
  listOfItems.add(new Item("solbriller", 200, 1530));
  listOfItems.add(new Item("håndklæde", 160, 500));
  listOfItems.add(new Item("sokker", 150, 90));
  listOfItems.add(new Item("bog", 35, 130));
  listOfItems.add(new Item("notesbog", 200, 1530));
  listOfItems.add(new Item("telt", 160, 500));
  
  return listOfItems.get(n);
}

void generateGeneration(ArrayList<Genetic> W){
  ArrayList<Genetic> next = new ArrayList();
  for(int i = 0; i < W.size(); i++){
    W.get(i).
  }
}
