class backgrounds{
  PImage img = loadImage("hill.png");
  void blank(){
    fill (0);
    rect(0,0,579,359);
  }
  void hills(){
    fill(80,140,256);
    rect(0,0,579,359);
    image(img,0,232);
  }
}
