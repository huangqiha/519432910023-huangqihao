ParticleSystem ps;
boolean makeParticles;
boolean SaveImage;
PImage img;
particleGenerator2  pg;
particleGenerator3  pg3;

void setup() {
background(0);
  frameRate(300);
  ps = new ParticleSystem(new PVector(width/2, height/2));
  img=loadImage("pic1.jpg");
  img.loadPixels();
  size(1200,800);
  img.resize(width,height);
  pg = new particleGenerator2();
  pg3 = new particleGenerator3();
}
void draw() {
  if (key=='j'){
  fill(0,1);
  rect(0,0,width,height);}
  if (key=='k'){clear();}
  
  if (key=='1'||key=='f'||key=='g'||key=='h'||key=='j'){ps.run();}
  if (key=='2'){xiangsu1();}
  if (key=='3'){xiangsu2();}
  if (key=='4'){filter_system();}
  if (key=='5'){pg.run();}
    if (key=='6'){pg3.run();}
      if (key=='s'){
   SaveImage=true;}
  
if (SaveImage){
  save("output/pic1"+year()+month()+day()+hour()+minute()+second()+".jpg");
   SaveImage=false;
if (key=='d'){
 SaveImage=false;
}

}
  
}

void mouseMoved() {
  if((mouseX>0)&&(mouseX<width)&&(mouseY>0)&&(mouseY<height)){
  makeParticles = true;
}
 else{makeParticles = false;}
}
