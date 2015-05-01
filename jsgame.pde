void setup(){
  size(580,360);
}
keycontrol keys= new keycontrol();
backgrounds bkgd= new backgrounds();
void keyPressed(){keys.insert(keyCode);}
void keyReleased(){keys.takeout(keyCode);}
void draw(){
/*update background*/
  //bkgd.blank();
  bkgd.hills();
/*display keys pressed alongside priority in upper right*/
  keys.debugkeys();
}
