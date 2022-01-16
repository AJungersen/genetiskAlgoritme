class Graphics{
  int ulx = 0, uly = 550, brx = 250, bry = 50;//coordinates for button
  int sulx = 0, suly = 60, sbrx = 900, sbry = 240;//coordinates for black screen
  int gulx = 99, guly = 300, gbrx = 900, gbry = 233;//coordinates for black screen
  String Title = "Indhold i tasken:";//text on black screen
  String display = "Ikke beregnet";
  Graphics(){
  
  }
  
  void drawButton(){
  
  //this part draws the button on the screen
  fill(255,0,0);
  rect(ulx, uly, brx, bry);
  fill(0);
  textSize(25);
  text("Start beregning", 25, 580);
  
  //black screen
  fill(0);
  rect(sulx, suly, sbrx, sbry);
  fill(255);
  textSize(25);
  text(display, 10, 100);
  
  //titel
  fill(0);
  textSize(50);
  text(Title, 10, 50);
  
  //graph
  fill(0,0,255);
  rect(gulx, guly, gbrx, gbry);
  fill(255);
  textSize(20);
  text("Udvikling optimal taskepakning", 300, 325);
  textSize(15);
  fill(0);
  text("Generationer", 385, 548);
  text("Nøjagtighed", 10, 425);
  line(0, 550, 900, 550);
  if(buttonClicked == true){
  //funktion
  for(int i = 0; i < generation.size(); i = i+10){
    circle(100+i,500-(generation.get(i).highScore-800)/2,10);
      }
    }
  }
  
}
