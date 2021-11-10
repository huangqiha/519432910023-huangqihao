int heng[]={10,60,100,160,280,480,520,690,750,780};
int zong[]={10,100,160,300,420,520,550,650,700,750};
float x=20,x2=170,x3=70,x4=600,x5=110,x6=700,x7=760,x8=490,x9=650,x10=400,x11=300,x12=170;
float y=20,y2=20,y3=550,y4=710,y5=420,y6=100,y7=500,y8=500,y9=110,y10=530,y11=660,y12=200;
float xspeed=0,xspeed2=10,xspeed3=0,xspeed4=10,xspeed5=0,xspeed6=0,xspeed7=0,xspeed8=0,xspeed9=10,xspeed10=10,xspeed11=10,xspeed12=0;
float yspeed=10,yspeed2=0,yspeed3=10,yspeed4=0,yspeed5=10,yspeed6=10,yspeed7=10,yspeed8=10,yspeed9=0,yspeed10=0,yspeed11=0,yspeed12=10;

void setup(){
  size(800,800);  
  frameRate(5);
}

void draw(){
  background(230);
  for (int j=0;j<=9;j++){
for (int i=0;i<=80;i++){
    fill(random(0,255));
    stroke(100);
    strokeWeight(3);
  rect(heng[j],i*10,10,10);}}

for (int j=0;j<=9;j++){
  for (int i=0;i<=80;i++){
    fill(random(0,255));
    stroke(100);
    strokeWeight(3);
  rect(i*10,zong[j],10,10);}}
  
  x+=xspeed;
  y+=yspeed;
    fill(0);
  noStroke();
  rect(x,y,40,50);
  if (y>690)
  {yspeed=yspeed*(-1);}
  if (y<30)
  {yspeed=yspeed*(-1);}//zong1
  
  x2+=xspeed2;
  y2+=yspeed2;
    fill(120);
  noStroke();
  rect(x2,y2,100,80);
  if (x2>670)
  {xspeed2=xspeed2*(-1);}
  if (x2<80)
  {xspeed2=xspeed2*(-1);}//heng1
  
  x3+=xspeed3;
  y3+=yspeed3;
  //fill(120);
      fill(120);
  noStroke();
  rect(x3,y3,30,100);
  if (y3>640)
  {yspeed3=yspeed3*(-1);}
  if (y3<120)
  {yspeed3=yspeed3*(-1);}//zong2
  
    
  x4+=xspeed4;
  y4+=yspeed4;
    fill(180);
  noStroke();
  rect(x4,y4,100,40);
  if (x4>670)
  {xspeed4=xspeed4*(-1);}
  if (x4<80)
  {xspeed4=xspeed4*(-1);}//heng-1
  
  x5+=xspeed5;
  y5+=yspeed5;
    fill(0);
  noStroke();
  rect(x5,y5,50,70);
  if (y5>670)
  {yspeed5=yspeed5*(-1);}
  if (y5<30)
  {yspeed5=yspeed5*(-1);}//zong3
  
  x6+=xspeed6;
  y6+=yspeed6;
    fill(180);
  noStroke();
  rect(x6,y6,50,70);
  if (y6>670)
  {yspeed6=yspeed6*(-1);}
  if (y6<30)
  {yspeed6=yspeed6*(-1);}//zong-2
  
  x7+=xspeed7;
  y7+=yspeed7;
  fill(0);
  noStroke();
  rect(x7,y7,20,150);
  if (y7>590)
  {yspeed7=yspeed7*(-1);}
  if (y7<30)
  {yspeed7=yspeed7*(-1);}//zong-1
    
  x8+=xspeed8;
  y8+=yspeed8;
    fill(120);
  noStroke();
  rect(x8,y8,30,100);
  if (y8>640)
  {yspeed8=yspeed8*(-1);}
  if (y8<30)
  {yspeed8=yspeed8*(-1);}//zong zhong
  
  x9+=xspeed9;
  y9+=yspeed9;
    fill(180);
  noStroke();
  rect(x9,y9,50,50);
  if (x9>720)
  {xspeed9=xspeed9*(-1);}
  if (x9<110)
  {xspeed9=xspeed9*(-1);}//heng2
  
  x10+=xspeed10;
  y10+=yspeed10;
    fill(0);
  noStroke();
  rect(x10,y10,120,20);
  if (x10>650)
  {xspeed10=xspeed10*(-1);}
  if (x10<110)
  {xspeed10=xspeed10*(-1);}//heng zhong
  
  x11+=xspeed11;
  y11+=yspeed11;
    fill(180);
  noStroke();
  rect(x11,y11,30,40);
  if (x11>740)
  {xspeed11=xspeed11*(-1);}
  if (x11<110)
  {xspeed11=xspeed11*(-1);}//heng-2
  
    x12+=xspeed12;
  y12+=yspeed12;
    fill(100);
  noStroke();
  rect(x12,y12,110,80);
  if (y12>660)
  {yspeed12=yspeed12*(-1);}
  if (y12<30)
  {yspeed12=yspeed12*(-1);}//heng-2
}
    
