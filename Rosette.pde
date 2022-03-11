class Rosette extends Roset{
  float n; // nombre d'objets
  Roset k; // k : l'objet Roset
Rosette(float xpos,float ypos,float p1,float p2,float p3,float p4,float t,int c, float np){
 super(xpos,ypos,p1,p2,p3,p4,t,c);
 n = np; //Constructeur
}
  
  float a =0; // c'est la début de degré de rotation    
  float x,x1,b1,b2,b3; // x: adjustement de l'axe-X
                       // x1: adjustement de l'axe-Y
                       // b1,b2,b3 : points de décalage, Calculer et Appliquer à plusieurs exemples
void show(){
  float deg = 360/n; // degré de rotation selon le nombre d'objets
  b1 = -((11*t)/20);
  b2 = (4*t)/5;
  b3 = (3*t)/4;
  x = b1;
  x1 = b1;
  
  for (int i = 1; i<= n; i++){
    
  pushMatrix();
  translate(xpos + x ,ypos + x1 ); // translation sur les axes
  rotate(radians(a)); // rotation
  translate(-xpos/2,-ypos/2);  // translation sur l'objet pour obtenir translation centré
  k = new Roset(xpos/2,ypos/2,p1,p2,p3,p4,t,c);
  k.show();
  popMatrix();
  
  a += deg;
  
  if(a % 180 == 0){
      if(n <= 2) { 
      x = -b1;
      x1 = -b1;
  } else{
      x = b1;
      x1 = b1;
      }
    }else if(a % 90 == 0){
      b1 *= -1;
      x = b1 ;
      x1 = -b1;
    }else if(a % 45 == 0){  
      x = 0;
      x1 = -b2;
      if(a % 135 == 0){
        x = b2;
        x1 = 0;
      }
      if(a % 225 == 0){
        x = 0;
        x1 = b3;
      }
      if(a % 315 == 0){
        x = -b3;
        x1 =0;
      }
    }
    
  }
  
  
  
  } 
}
