void setup(){size(600,1000);
  background(244,230,215);
}

void draw(){
if (mousePressed==true){
drawCircle(mouseX,mouseY,100);
}}

void drawCircle(float x, float y, float radius){

noFill();
float xx=map(mouseX,0,width,0,255);
float yy=map(mouseY,0,height,0,255);
stroke(yy,xx,241,9);
ellipse(x,y,radius,radius);
//translate(x,y);
if(radius>10){
//for (int i=1;i<=6;i++){
float secondX1=x+(radius/2)*cos(-(3.14*1/6));
float secondY1=y+(radius/2)*sin(-(3.14*1/6));
drawCircle(secondX1,secondY1,radius/2);

float secondX2=x+(radius/2)*cos(-(3.14*3/6));
float secondY2=y+(radius/2)*sin(-(3.14*3/6));
drawCircle(secondX2,secondY2,radius/2);

float secondX3=x+(radius/2)*cos(-(3.14*5/6));
float secondY3=y+(radius/2)*sin(-(3.14*5/6));
drawCircle(secondX3,secondY3,radius/2);

float secondX4=x+(radius/2)*cos(-(3.14*7/6));
float secondY4=y+(radius/2)*sin(-(3.14*7/6));
drawCircle(secondX4,secondY4,radius/2);

float secondX5=x+(radius/2)*cos(-(3.14*9/6));
float secondY5=y+(radius/2)*sin(-(3.14*9/6));
drawCircle(secondX5,secondY5,radius/2);

float secondX6=x+(radius/2)*cos(-(3.14*11/6));
float secondY6=y+(radius/2)*sin(-(3.14*11/6));
drawCircle(secondX6,secondY6,radius/2);

}
}
