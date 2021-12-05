void filter_system(){
for (int i=0;i<1000;i++){
int xx=floor(random(width));
int yy=ceil(random(height));

float colorX=map(mouseX,0,width,0,155);
float colorY=map(mouseY,0,height,0,155);

color c=img.get(xx,yy);
float b=brightness(c);
float eSize=5;
noStroke();
fill(colorX,colorY,255-b,105);
rect(xx,yy,eSize,eSize);
}
}
