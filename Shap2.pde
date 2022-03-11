class Shap2 {
  float x,y,t;// x : X-Position ** y : Y-Position ** t : taille de l'objet
  int c,c1; // c : couleur de l'objet ** c1 : Couleur de bordeur
  
Shap2(float xpos, float ypos, float taille, int col , int col1) {
x = xpos;
y = ypos;
t = taille;  //Constructeur
c = col;
c1 = col1;
}
void show(){  // Construction de l'objet
beginShape();
  stroke(c1); // Couleur de  bordeur
  noFill();  // tu peut ajouter un couleur avec la fonction : fill(int);
  strokeWeight(1); // la taille de bordeur
  vertex(x+0,y+0);
  vertex(x+(t/4),y+0);
  vertex(x+(t/2),y+(t/4));
  vertex(x+(t-(t/4)),y+0);
  vertex(x+t,y+0);
  vertex(x+t,y+(t/4));
  vertex(x+(t-(t/4)),y+(t/2));
  vertex(x+t,y+(t-(t/4)));
  vertex(x+t,y+t);
  vertex(x+(t-(t/4)),y+t);
  vertex(x+(t/2),y+(t-(t/4)));
  vertex(x+(t/4),y+t);
  vertex(x+0,y+t);
  vertex(x+0,y+(t-(t/4)));
  vertex(x+(t/4),y+(t/2));
  vertex(x+0,y+(t/4));
  endShape(CLOSE);
}
}
