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
  listOfItems.add(new Item("sukker", 60, 150));
  listOfItems.add(new Item("dåsemad", 45, 680));
  listOfItems.add(new Item("banan", 60, 270));
  listOfItems.add(new Item("æble", 40, 390));
  listOfItems.add(new Item("ost", 30, 230));
  listOfItems.add(new Item("øl", 10, 520));
  listOfItems.add(new Item("solcreme", 70, 110));
  listOfItems.add(new Item("kamera", 30, 320));
  listOfItems.add(new Item("T-shirt", 15, 240));
  listOfItems.add(new Item("bukser", 10, 480));
  listOfItems.add(new Item("paraply", 40, 730));
  listOfItems.add(new Item("vandtætte bukser", 70, 420));
  listOfItems.add(new Item("vandtæt overtøj", 75, 430));//nået til pris her
  listOfItems.add(new Item("pung", 80, 220));
  listOfItems.add(new Item("solbriller", 20, 70));
  listOfItems.add(new Item("håndklæde", 12, 180));
  listOfItems.add(new Item("sokker", 50, 40));
  listOfItems.add(new Item("bog", 10, 300));
  listOfItems.add(new Item("notesbog", 1, 900));
  listOfItems.add(new Item("telt", 150, 2000));
  
  return listOfItems.get(n);
}
