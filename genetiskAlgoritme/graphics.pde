class Graphics{
  int ulx = 0, uly = 550, brx = 250, bry = 50;//coordinates for button
  int sulx = 0, suly = 0, sbrx = 600, sbry = 200;//coordinates for black screen
  String display = "Displayerror";//text on black screen
  Graphics(){
  
  }
  
  void drawButton(){
  
  //this part draws the button on the screen
  fill(355,0,0);
  rect(ulx, uly, brx, bry);
  fill(0);
  textSize(25);
  text("start beregning", 25, 580);
  
  fill(0);
  rect(sulx, suly, sbrx, sbry);
  fill(355);
  textSize(50);
  text(display, 10, 10);
  
  }
  
}
