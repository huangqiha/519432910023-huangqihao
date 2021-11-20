PImage img;
boolean SaveImage;
void setup(){
size(400,650);
initiate();
}

void initiate(){
  img=loadImage("风景1.jpg");
}

void draw(){
img.loadPixels();
for (int i=0;i<1000;i++){
int xx=floor(random(width));
int yy=ceil(random(height));

float colorX=map(mouseX,0,width,0,255);
float colorY=map(mouseY,0,height,0,255);

color c=img.get(xx,yy);
float b=brightness(c);
//float eSize=map(b,0,225,1,20);
float eSize=5;
noStroke();
fill(colorX,colorY,255-b,105);

//fill(255-b,180,240,105);
rect(xx,yy,eSize,eSize);
}
}
