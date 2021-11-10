void setup() {
size(1200, 800);
//background(221,248,243);
background(203,246,251);
noStroke();
fill(255,162,177);
circle(20,20,10);
fill(253,209,157);
circle(40,20,10);

fill(119,251,184);
circle(60,20,10);
fill(20,246,251);
circle(80,20,10);

fill(253,188,255);
circle(100,20,10);}
int pen;

void button(){
 if ((mouseX>10)&&(mouseX<30)&&(mouseY>10)&&(mouseY<30)){
pen=1;}
if ((mouseX>30)&&(mouseX<50)&&(mouseY>10)&&(mouseY<30)){
pen=2;}
if ((mouseX>50)&&(mouseX<70)&&(mouseY>10)&&(mouseY<30)){
pen=3;}
if ((mouseX>70)&&(mouseX<90)&&(mouseY>10)&&(mouseY<30)){
pen=4;}
if ((mouseX>90)&&(mouseX<110)&&(mouseY>10)&&(mouseY<30)){
pen=5;}}

void draw() { 
  button();
  if(pen==1){paint1(); }
 if(pen==2){paint2(); }
  if(pen==3){paint3(); }
    if(pen==4){paint4(); }
   if(pen==5){paint5(); }
}

void paint1(){
if (mousePressed) {
  if (mouseY>30){
translate(mouseX, mouseY);
float x=map(mouseX,0,width,0,255);
float y=map(mouseY,0,height,0,255);
fill(241,x,y);
stroke(241,x,y);
circle(0,0,random(5,30));

}}}

void paint4(){
  if (mousePressed) {
      if (mouseY>30){
translate(mouseX, mouseY);
fill(203,246,251);
stroke(203,246,251);
circle(0,0,40);
}}}

void paint2(){
    if (mousePressed) {
      if (mouseY>30){
translate(mouseX, mouseY);
float x2=map(mouseX,0,width,0,255);
float y2=map(mouseY,0,height,0,255);
strokeWeight(3);
stroke(241,x2,y2);
line(0,0,random(20),random(20));
}}}


void paint3(){
 float r=100;
if (mousePressed) {
  if (mouseY>30){
translate(mouseX, mouseY);
  for (int i =0; i<100; i++){
    float x1=random(-r,r);
    float y1=random(-r,r);
    if ((x1*x1+y1*y1)<1000){
fill(255);
strokeWeight(0.1);
stroke(255);
     circle(x1,y1,5);}
  }
}}}

void paint5(){
fill(203,246,251);
noStroke();
rect(0,30,width,height);

}
