class Graphics{
  int ulx = 0, uly = 550, brx = 250, bry = 50;//coordinates for button
  int sulx = 0, suly = 60, sbrx = 600, sbry = 400;//coordinates for black screen
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
  
  fill(0);
  rect(sulx, suly, sbrx, sbry);
  fill(255);
  textSize(25);
  text(display, 10, 100);
  
  //titel
  fill(0);
  textSize(50);
  text(Title, 10, 50);
  
  }
  
}
