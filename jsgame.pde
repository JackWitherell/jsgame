void setup(){
  size(580,360);
}

keycontrol keys= new keycontrol();
void keyPressed(){
  keys.insert(keyCode);
}
void keyReleased(){
  keys.takeout(keyCode);
}

void draw(){
  fill (0);
  rect(0,0,579,359);
  keys.debugkeys();
}
