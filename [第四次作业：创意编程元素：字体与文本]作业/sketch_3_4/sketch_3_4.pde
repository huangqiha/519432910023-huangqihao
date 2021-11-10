PFont myfont;
String s="千里江陵一日还我心思何时上了九霄朝辞白帝彩云间在红尘里倾倒不是摔跤在江湖里飘摇爱恨浮夸的世道寻欢由今朝纷纷扰扰明日了在红尘里逍遥一壶新丰不寂寥深情人易老是非轮转谁还忘不掉寻欢由今朝明日复逍遥沏一壶纷扰笑看世事潮";

void setup() {
//fullScreen();
size(1000,800);
myfont=createFont("微软雅黑",24);
//background(100,0,0,3);
  frameRate(2);
}
void draw(){
 noStroke();
  fill(255,20);
  rect(0,0,width,height);
 
  translate(random(0,width),random(0,height));
float ang =3.14;
    float r =random(0,300);
    
 for(int i=0; i<31;i++){

  fill(i*15,13,80);
  textFont(myfont);
  textSize(r/12);
  char news = s.charAt(i);
  text(news, cos(ang)*r,sin(ang)*r);
  ang=ang-0.2;
 }
draw2();

}
void draw2(){
 noStroke();
  fill(255,20);
  rect(0,0,width,height);

  translate(random(0,width),random(0,height));
float ang =3.14;
    float r =random(0,500);
    
 for(int i=0; i<31;i++){

  fill(83,i*5,247);
  textFont(myfont);
  textSize(r/12);
  char news = s.charAt(i+30);
  text(news, cos(ang)*r,sin(ang)*r);
  ang=ang-0.2;
 }
}
