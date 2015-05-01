class keycontrol{
  int[] keys={0,0,0,0,0};
  int currentkey=0;
  int keyreleasedcheck=5;
  int alreadypressed;
  
  void insert(int buttonpress){
    for (int i=0;i<keys.length;i++){
      if (buttonpress==keys[i]||currentkey==5){
        alreadypressed=1;
      }
    }
    if (alreadypressed==0){
      keys[currentkey]=buttonpress;
      currentkey++;
    }
    alreadypressed=0;
  }
  void takeout(int buttonpress){
    for (int i=0;i<keys.length;i++){
      if (keys[i]==buttonpress){
        keys[i]=0;
        keyreleasedcheck=i;
      }
    }
    if (keyreleasedcheck!=5){
      keys[keyreleasedcheck]=keys[currentkey-1];
      keys[currentkey-1]=0;
      keyreleasedcheck=5;
      currentkey--;
    }
  }
  int getkey(int i){
    return keys[i];
  }
  int getlength(){
    return keys.length;
  }
  void debugkeys(){
    fill (255);
    textSize(32);
    for (int i=0;i<=keys.length;i++){
      text(keys[i], 532,30*(i+1));
    }
  }
}
