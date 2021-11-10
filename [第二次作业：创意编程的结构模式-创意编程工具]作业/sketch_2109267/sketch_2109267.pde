float x=0,x1,x2=200,x3,x4=100,x5,x6;
float y=0,y1,y2=200,y3,y4=100,y5,y6;
float r=50,r2=20;
float xspeed=10,xspeed1=10,xspeed2=5,xspeed3=5,xspeed4=10,xspeed5=10,xspeed6=5;
float yspeed=10,yspeed1=10,yspeed2=5,yspeed3=5,yspeed4=10,yspeed5=10,yspeed6=5;

void setup(){
  size(800,800);
  //background(255,0,125,30);
  frameRate(20);
  x1=width-r;
  y1=height-r;
  x3=width-200-r;
  y3=height-200-r;
  x5=width-100-r;
  y5=height-100-r;
  x6=300;
  y6=400;
  
}

void draw(){
  fill(110,206,251,5);
  rect(0,0,width,height);
  x+=xspeed;
  y+=yspeed;
  x1+=xspeed1;
  y1+=yspeed1;
  x2+=xspeed2;
  y2+=yspeed2;
  x3+=xspeed3;
  y3+=yspeed3;
  x4+=xspeed4;
  y4+=yspeed4;
  x5+=xspeed5;
  y5+=yspeed5;
  x6+=xspeed6;
  y6+=yspeed6;
  noStroke();
  fill(246,233,216);
  //rect(x6,y6,r2,r2,7);
  
  for(int i=0;i<5;i++){
  fill(243,149,191);
  rect(x,random(-50,50),r,r,7);}
  for(int i=0;i<5;i++){
  fill(243,149,191);
  rect(random(700,800),y,r,r,7);}
  for(int i=0;i<5;i++){
  fill(243,149,191);
  rect(x1,random(700,800),r,r,7);}
  for(int i=0;i<5;i++){
  fill(243,149,191);
  rect(random(-50,50),y1,r,r,7);}
  
    for(int i=0;i<5;i++){
  fill(243,207,207);
  rect(x4,random(100,150),r,r,7);}
  for(int i=0;i<5;i++){
  fill(243,207,207);
  rect(random(600,650),y4,r,r,7);}
  for(int i=0;i<5;i++){
  fill(243,207,207);
  rect(x5,random(600,650),r,r,7);}
  for(int i=0;i<5;i++){
  fill(243,207,207);
  rect(random(100,150),y5,r,r,7);}
  
  for(int i=0;i<5;i++){
  fill(181,255,230);
  rect(x2,random(200,250),r,r,7);}
  for(int i=0;i<5;i++){
  fill(181,255,230);
  rect(random(500,550),y2,r,r,7);}
  for(int i=0;i<5;i++){
  fill(181,255,230);
  rect(x3,random(500,550),r,r,7);}
  for(int i=0;i<5;i++){
  fill(181,255,230);
  rect(random(200,250),y3,r,r,7);}
  

  
  if (x<0)
  {xspeed=xspeed*(-1);}
  if(x>width-r){
   xspeed=xspeed*(-1);}
  if (y<0)
  {yspeed=yspeed*(-1);}
  if(y>height-r){
   yspeed=yspeed*(-1);}
  if (x1>800-r)
  {xspeed1=xspeed1*(-1);}
  if(x1<0){
   xspeed1=xspeed1*(-1);}
  if (y1<0)
  {yspeed1=yspeed1*(-1);}
  if(y1>800-r){
   yspeed1=yspeed1*(-1);}
   
     if (x4<100)
  {xspeed4=xspeed4*(-1);}
  if(x4>width-100-r){
   xspeed4=xspeed4*(-1);}
  if (y4<100)
  {yspeed4=yspeed4*(-1);}
  if(y4>height-100-r){
   yspeed4=yspeed4*(-1);}
  if (x5>700-r)
  {xspeed5=xspeed5*(-1);}
  if(x5<100){
   xspeed5=xspeed5*(-1);}
  if (y5<100)
  {yspeed5=yspeed5*(-1);}
  if(y5>700-r){
   yspeed5=yspeed5*(-1);}
   
   
  if (x2<200)
  {xspeed2=xspeed2*(-1);}
  if(x2>600-r){
   xspeed2=xspeed2*(-1);}
  if (y2<200)
  {yspeed2=yspeed2*(-1);}
  if(y2>600-r){
   yspeed2=yspeed2*(-1);}
  if (x3>600-r)
  {xspeed3=xspeed3*(-1);}
  if(x3<200){
   xspeed3=xspeed3*(-1);}
  if (y3<200)
  {yspeed3=yspeed3*(-1);}
  if(y3>600-r){
   yspeed3=yspeed3*(-1);}
   
   
   if (x6<300)
  {xspeed6=xspeed6*(-1);}
  if(x6>width-300-r2){
   xspeed6=xspeed6*(-1);}
   if (y6<300)
  {yspeed6=yspeed6*(-1);}
  if(y6>height-300-r2){
   yspeed6=yspeed6*(-1);}
}
