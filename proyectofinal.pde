float punto = 9;
float anguloa;
float angulob;

void setup() {
  
  size(900, 900); 
  stroke (0);
  fill(0);
  
  frameRate(1); 
  
  anguloa = radians(1.5); 
  angulob = radians(50);  

  for(int i=0; i<=450; i+=1.5)
  {
  noStroke();  
   if (i%2==0) 
   {
    fill (#674428);
    rect(i, i, 900-(i*2),900-(i*2));
   }
    else 
    fill (#2B6728);
    rect(i, i, 900-(i*2),900-(i*2));
  }
  
  for(int i=0; i<=450; i+=3)
  {
  noStroke();  
   if (i%2==0) 
   {
    fill (#F0C61D);
    rect(i, i, 900-(i*2),180-(i*2));
   }
    else 
    fill (#F0951D);
    rect(i, i,900-(i*2),180-(i*2));
  }
  
  for(int i=0; i<=900; i+=1.5)
  {
    if (i%2==0)
    {
      fill (#F79257);  
    arc(450,180,450-i,450-i, radians(180), radians(360));
    }
    else
    fill (#F0281D);
    arc(450,180,450-i,450-i, radians(180), radians(360));
  }

  fill(#1D7C20);
  beginShape();
   vertex(440,450);
   vertex(440,420);
   vertex(425,420);
   vertex(415,410);
   vertex(415,400);
   vertex(420,395);
   vertex(425,395);
   vertex(430,400);
   vertex(430,405);
   vertex(440,405);
   vertex(440,345);
   vertex(445,340); 
   vertex(455,340);
   vertex(460,345);
   vertex(460,375);
   vertex(470,375);
   vertex(470,370);
   vertex(475,365);
   vertex(480,365);
   vertex(485,370);
   vertex(485,380);
   vertex(475,390);
   vertex(460,390);
   vertex(460,450);
  
  
  endShape(CLOSE);
  
  fill(#836E18);
  stroke(0);
  beginShape();
   vertex(0,180);
   vertex(20,160);
   vertex(40,140);
   vertex(45,120);
   vertex(50,110);
   vertex(67,105);
   vertex(72,95);
   vertex(85,90);
   vertex(90,80);
   vertex(95,85);
   vertex(100,95);
   vertex(110,107);
   vertex(115,112);
   vertex(115,120);
   vertex(120,130);
   vertex(140,140);
   vertex(150,155);
   vertex(170,170);
   vertex(175,170);
   vertex(180,180);
   
   
 
 
  
  
  endShape(CLOSE);

fill(#836E18);
stroke(0);
  beginShape();
   vertex(720,180);
   vertex(740,160);
   vertex(760,140);
   vertex(765,120);
   vertex(770,110);
   vertex(787,105);
   vertex(792,95);
   vertex(805,90);
   vertex(810,80);
   vertex(815,85);
   vertex(820,95);
   vertex(830,107);
   vertex(835,112);
   vertex(835,120);
   vertex(840,130);
   vertex(860,140);
   vertex(870,155);
   vertex(890,170);
   vertex(895,170);
   vertex(900,180);
   
   
 
 
  
  
  endShape(CLOSE);
  

  fill(0);
stroke(0);
  beginShape();
   
   vertex(0,180);
   vertex(900,180);
   vertex(900,180);
   vertex(0,180);
     
  endShape(CLOSE);
  
    fill(0);
    stroke(0);
    beginShape();
   
     
   vertex(180,180);
   vertex(440,440);
      
  endShape(CLOSE);
  
      fill(0);
stroke(0);
  beginShape();
   
   vertex(460,440);
   vertex(720,180);
      
  endShape(CLOSE);

}

  



void draw() {
  
  fill (0);
  noStroke();
  translate(width/2, height/2);          
  
  semilla1(punto, radians(90), 0, 0);  
}

void semilla1(float punto, float angulo, float x, float y) {
  
  if (punto > 1.0) {
    
    
    float r = random(0, 1.0);  
    
    
    if (r > 0.02) {  
      ellipse(x, y, punto, punto);
      float nuevax = x + cos(angulo) * punto;
      float nuevay = y + sin(angulo) * punto;
      semilla1(punto * 0.99, angulo - anguloa, nuevax, nuevay);   
    }
    
    else {  
      ellipse(x, y, punto, punto);
      float nuevax = x + cos(angulo);
      float nuevay = y + sin(angulo);
      semilla2(punto * 0.99, angulo + anguloa, nuevax, nuevay);
      semilla1(punto * 0.60, angulo + angulob, nuevax, nuevay);
      semilla2(punto * 0.50, angulo - angulob, nuevax, nuevay);
    } 
  }
}


void semilla2(float punto, float angulo, float x, float y) {
  
  if (punto > 1.0) {
    
    
    float r = random(0, 1.0);
    
    
    if (r > 0.05) {
      ellipse(x, y, punto, punto);
      float nuevax = x + cos(angulo) * punto;
      float nuevay = y + sin(angulo) * punto;
      semilla2(punto * 0.99, angulo + anguloa, nuevax, nuevay);
    } 
    
    else {
      ellipse(x, y, punto, punto);
      float nuevax = x + cos(angulo);
      float nuevay = y + sin(angulo);
      semilla1(punto * 0.99, angulo + anguloa, nuevax, nuevay);  
      semilla2(punto * 0.60, angulo + angulob, nuevax, nuevay);
      semilla1(punto * 0.50, angulo - angulob, nuevax, nuevay);
    }
  }
}