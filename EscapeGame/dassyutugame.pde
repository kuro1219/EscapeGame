PImage kabe;
PImage kagi;
PImage tobira;
int x=0;
float y=0;
float a=30;
float b=300;
float c=300;
float d=95;
int e=190;
int f=460;
int g=190;
int h=460;
float scale=0.3;
boolean key = false;
int scene =1;
String s="鍵を入手した";
String t="扉を開けた";

void setup() {
  size(480, 480);
  kabe=loadImage("Unknown");
  kagi=loadImage("kagi.png");
  tobira=loadImage("door_close.png");
  textFont(createFont("SansSerif",24,true));
}

//シーンの切り替え
void draw() {
  background(255, 255, 255);
  if (scene >3) {
    scene=1;
  }
  if (scene <1) {
    scene=3;
  }

  if (scene == 1) {
    haikei();   
    sannkaku();
    sannkaku2();
    window();
  } 
  if (scene == 2) {
    haikei2();
    sannkaku();
    sannkaku2();
    window();
    image(kagi, a, b, kagi.width*scale*0.7, kagi.height*scale*0.7);
  }

  if (scene == 3) {
    haikei3();
    sannkaku();
    sannkaku2();
    window();
    fill(0, 0, 0);
    rect(310, 107, 110, 195);
    image(tobira, c, d, tobira.width*scale, tobira.height*scale);
  }
  
  if(a==10000&&b==10000){
    kagiget();
  }
  if(c==10000&&d==10000){
    tobiraaku();
  }
  
}


//鍵の取得
void mousePressed() {
  if (scene==1&&mouseX>460) {
    scene=scene+1;
  } else if (scene==1&&mouseX<20) {
    scene =scene-1;
  } else if (scene==2&&mouseX>460) {
    scene=scene+1;
    if(a==10000&&b==10000){
    kagiget();
    e=10000;f=10000;}
  } else if (scene==2&&mouseX<20) {
    scene=scene-1;
    if(a==10000&&b==10000){
    kagiget();
    e=10000;f=10000;}
  } else if (scene==3&&mouseX>460) {
    scene=scene+1;
  } else if (scene==3&&mouseX<20) {
    scene=scene-1;
  }

  if (mouseX<100&&mouseX>40&&mouseY<410&&mouseY>300) {
    key=true;
    a=10000;
    b=10000;
  } else if (mouseX>300&&mouseX<450&&mouseY<310&&mouseY>105) {
    if (key) {
      c=10000;
      d=10000;
    }
  }
  
  
}

//各種描写
void sannkaku() {
  fill(255, 255, 255);
  triangle(460, 240, 460, 260, 480, 250);
}

void sannkaku2() {
  fill(255, 255, 255);
  triangle(20, 240, 20, 260, 0, 250);
}

void window() {
  fill(225, 103, 103);
  rect(75, 65, 100, 100);
  fill(80, 80, 255);
  rect(80, 70, 40, 40);
  fill(80, 80, 255);
  rect(130, 70, 40, 40);
  fill(80, 80, 255);
  rect(80, 120, 40, 40);
  fill(80, 80, 255);
  rect(130, 120, 40, 40);
}

void haikei() {
  background(255, 0, 0);
  fill(195, 72, 72);
  rect(0, 300, 480, 240);
  fill(0,0,0);
  rect(0,430,480,51);
}

void haikei2() {
  background(0, 255, 0);
  fill(195, 72, 72);
  rect(0, 300, 480, 240);
  fill(0,0,0);
  rect(0,430,480,51);
}

void haikei3() {
  background(0, 0, 255);
  fill(195, 72, 72);
  rect(0, 300, 480, 240);
  fill(0,0,0);
  rect(0,430,480,51);
}

void kagiget(){
  fill(255,255,255);
    textSize(20);
    text(s,e,f);
}

void tobiraaku(){
  fill(255,255,255);
    textSize(20);
    text(t,g,h);
}
  
  
