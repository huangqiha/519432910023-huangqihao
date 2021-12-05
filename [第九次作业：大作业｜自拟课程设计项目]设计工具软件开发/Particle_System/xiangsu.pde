void xiangsu(){
xiangsu1();
xiangsu2();
}

void xiangsu1(){
  
color c=img.get(mouseX,mouseY);
fill(c);
noStroke();
rect((int)(mouseX/10)*10,(int)(mouseY/10)*10,10,10);
color c2=img.get(mouseX-10,mouseY);
fill(c2);
rect((int)(mouseX/10)*10-10,(int)(mouseY/10)*10,10,10);
color c3=img.get(mouseX+10,mouseY);
fill(c3);
rect((int)(mouseX/10)*10+10,(int)(mouseY/10)*10,10,10);
color c4=img.get(mouseX,mouseY-10);
fill(c4);
rect((int)(mouseX/10)*10,(int)(mouseY/10)*10-10,10,10);
color c5=img.get(mouseX,mouseY+10);
fill(c5);
rect((int)(mouseX/10)*10,(int)(mouseY/10)*10+10,10,10);
color c6=img.get(mouseX-10,mouseY-10);
fill(c6);
rect((int)(mouseX/10)*10-10,(int)(mouseY/10)*10-10,10,10);
color c7=img.get(mouseX-10,mouseY+10);
fill(c7);
rect((int)(mouseX/10)*10-10,(int)(mouseY/10)*10+10,10,10);
color c8=img.get(mouseX+10,mouseY-10);
fill(c8);
rect((int)(mouseX/10)*10+10,(int)(mouseY/10)*10-10,10,10);
color c9=img.get(mouseX+10,mouseY+10);
fill(c9);
rect((int)(mouseX/10)*10+10,(int)(mouseY/10)*10+10,10,10);
}


void xiangsu2(){
  
color c=img.get(mouseX,mouseY);
fill(c);
noStroke();
rect((int)(mouseX/10)*10,(int)(mouseY/10)*10,10,10);

rect((int)(mouseX/10)*10-10,(int)(mouseY/10)*10,10,10);

rect((int)(mouseX/10)*10+10,(int)(mouseY/10)*10,10,10);
    
rect((int)(mouseX/10)*10,(int)(mouseY/10)*10-10,10,10);

rect((int)(mouseX/10)*10,(int)(mouseY/10)*10+10,10,10);

rect((int)(mouseX/10)*10-10,(int)(mouseY/10)*10-10,10,10);

rect((int)(mouseX/10)*10-10,(int)(mouseY/10)*10+10,10,10);

rect((int)(mouseX/10)*10+10,(int)(mouseY/10)*10-10,10,10);

rect((int)(mouseX/10)*10+10,(int)(mouseY/10)*10+10,10,10);
}
