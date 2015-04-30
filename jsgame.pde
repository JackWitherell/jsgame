void setup(){
  size(580,360);
  //if (frame!=null){
  //  frame.setResizable(true);
  //}
}

int[] currentkeys={0,0,0,0,0};
int currentkey=0;
int keyreleasedcheck=5;
int alreadypressed=0;

void keyPressed(){
  for (int i=0;i<currentkeys.length;i++){
    if (keyCode==currentkeys[i]||currentkey==5){
      alreadypressed=1;
    }
  }
  if (alreadypressed==0){
    currentkeys[currentkey]=keyCode;
    currentkey++;
  }
  alreadypressed=0;
}
void keyReleased(){
  for (int i=0;i<currentkeys.length;i++){
    if (currentkeys[i]==keyCode){
      currentkeys[i]=0;
      keyreleasedcheck=i;
    }
  }
  if (keyreleasedcheck!=5){
    currentkeys[keyreleasedcheck]=currentkeys[currentkey-1];
    currentkeys[currentkey-1]=0;
    keyreleasedcheck=5;
    currentkey--;
  }
}

void draw(){
  fill (0);
  rect(0,0,255,255);
  fill (255);
  textSize(32);
  for (int i=0;i<=currentkeys.length;i++){
    text(currentkeys[i], 10,30*(i+1));
  }
  text(currentkey, 90,30);
  text(keyreleasedcheck, 90,60);
  text(alreadypressed, 90,90);
}
