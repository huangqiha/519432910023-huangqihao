int clr [] = {255, 0};
PFont font;
String msg [] = {
  "古来圣贤皆寂寞,惟有饮者留其名", "陈王昔时宴平乐,斗酒十千恣欢谑 ", "主人何为言少钱 ,径须沽取对君酌", 
  "五花马，千金裘,呼儿将出换美酒 "
};

CircleText nvCirc;

void setup() {
  size(1000, 800);
  font = createFont("YouYuan", 10, true);
  nvCirc = new CircleText(width/2, height/2, msg[int(random(msg.length))]);
  background(251,249,237);
  noLoop();
}

void draw() {
  fill(251,249,237,1);

rect(0,0,width,height);
  if (mousePressed) {
      float xx=map(mouseX,0,width,0,255);
    float yy=map(mouseY,0,height,0,255);
    fill(xx,yy,140);
    textFont(font, random(10, 40));
    translate (mouseX, mouseY);
    rotate(random(TWO_PI));
    nvCirc.drawTextRing(0, 0, msg[int(random(msg.length))]);
  }
}

void mousePressed() {
  redraw();
}

void keyPressed() {
  float xx=map(mouseX,0,width,0,255);
  float yy=map(mouseY,0,height,0,255);
  switch (key){
  case 's':
  case 'S': { saveFrame("img-###" + (int)random(100, 800) + ".jpg"); break; }
  //case 'i': 
  //case 'I': { clr[0]=clr[0]^clr[1]; clr[1] = clr[1]^clr[0]; clr[0]=clr[0]^clr[1];}
  default : { background(clr[(int)xx]);  fill(clr[(int)xx]); redraw(); }
  }
}

class CircleText {
  String inText = "Grymziki want to eat ";
  float xPos, yPos;
  float radius = 100;
  private float startAngle = 0; // for future using
  private float crclStrWidth;

  CircleText (float in_posX, float in_posY, String in_txt) {
    setXY(in_posX, in_posY);
    setText(in_txt);
  }

  void setText(String in_txt) {
    this.inText = in_txt;
  }

  void setXY(float in_posX, float in_posY) {
    this.xPos = in_posX;
    this.yPos = in_posY;
  }

  void shiftXY(float in_posX, float in_posY) {
    this.xPos += in_posX;
    this.yPos += in_posY;
  }

  //////////////////////////////////////////////////////////////////////////////////////////////

  // we set string and then method calculates size of the radius
  void drawTextRing(String in_txt) {
    setText(in_txt);
    drawTextOnRingBase();
  }

  void drawTextRing(float in_posX, float in_posY, String in_txt) {
    setXY(in_posX, in_posY);
    drawTextRing(in_txt);
  }

  void drawTextRing() {
    drawTextOnRingBase();
  }
  //////////////////////////////////////////////////////////////////////////////////////////////

  // we set string and radius and then method calculates size of the font
  void drawTextSizeForRadTxt(String in_txt, float in_diam) {
    this.inText = in_txt;
    textSize(10);
    textSize((TWO_PI * in_diam/2) / (widthOfString(in_txt)/10));
    drawTextOnRingBase();
  }

  void drawTextSizeForRadTxt(float in_posX, float in_posY, String in_txt, float in_diam) {
    setXY(in_posX, in_posY);
    drawTextSizeForRadTxt(in_txt, in_diam);
  }

  //////////////////////////////////////////////////////////////////////////////////////////////

  // we set symbol and radius and then method counts amount of the symbols for repetitions
  // if string contains more than 1 symbol then radius will be changed
  void drawSymbolsByRadius(String in_txt, float in_diam) {
    this.radius = in_diam/2;
    resetStrBySymbNum(in_txt, 0);
    calcRadLenFromStirng();
    drawTextOnRingBase();
  }  

  void drawSymbolsByRadius(float in_posX, float in_posY, String in_txt, float in_diam) {
    setXY(in_posX, in_posY);
    drawSymbolsByRadius(in_txt, in_diam);
  }

  //////////////////////////////////////////////////////////////////////////////////////////////  

  // we set string and count of repetitions and then method calculates size of the radius
  void drawStringRepetition(String in_txt, int in_countRepetition) {
    resetStrBySymbNum(in_txt, in_countRepetition);
    calcRadLenFromStirng();
    drawTextOnRingBase();
  }

  void drawStringRepetition(float in_posX, float in_posY, String in_txt, int in_countRepetition) {
    setXY(in_posX, in_posY);
    drawStringRepetition(in_txt, in_countRepetition);
    drawTextOnRingBase();
  }

  //////////////////////////////////////////////////////////////////////////////////////////////
  // helper methods

  // method create a new string that repeats itself as many times as necessary for existing radius
  private void resetStrBySymbNum(String in_txt, int count) {
    if (count == 0) {
      count = int(TWO_PI*radius/ (widthOfString(in_txt)));
    }
    this.inText = "";
    while (count>0) {
      this.inText += in_txt;
      count--;
    }
  }

  // method of calculating the string width and the corresponding radius   
  private void calcRadLenFromStirng() {
    this.crclStrWidth = widthOfString(this.inText); 
    this.radius = crclStrWidth / TWO_PI;
  }

  // widthOfString("String width") != textWidth("String width")
  float widthOfString(String in_str) {
    int cnt = 0;
    float totalWidth = 0;
    while (cnt < in_str.length () ) {
      totalWidth += textWidth(in_str.charAt(cnt));
      ++cnt;
    }
    return totalWidth;
  }

  //////////////////////////////////////////////////////////////////////////////////////////////

  void draw() {
    drawTextOnRingBase();
  }

  private void drawTextOnRingBase() {
    calcRadLenFromStirng();
    textAlign(CENTER);

    int count = 0;
    float arcLength = 0;
    float totalAngle = crclStrWidth/radius;
    float angle;

    while (count < inText.length () ) {
      float wdthTChar = textWidth(inText.charAt(count));
      arcLength += wdthTChar/2;
      angle = PI + arcLength / radius  - totalAngle;  
      float xx = cos(angle + startAngle) * radius + xPos;
      float yy = sin(angle + startAngle) * radius + yPos;

      pushMatrix();
      translate(xx, yy);
      rotate(angle + PI/2);
      text(inText.charAt(count++), 0, 0);
      popMatrix();
      arcLength += wdthTChar/2;
    }
    //    ellipse(xPos, yPos, radius*2, radius*2);
  }
}
