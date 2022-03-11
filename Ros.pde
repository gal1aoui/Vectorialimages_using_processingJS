class Ros {
  float x,y,t;// x : X-Position ** y : Y-Position ** t : taille de l'objet
  int c,trans; // c : couleur de l'objet ** trans : la transparence de couleur
  Ros(float xpos, float ypos, float taille, int couleur, int transparency) {
   x = xpos;
   y = ypos;
   t = taille;      //Constructeur
   c = couleur;
   trans = transparency;
}
void show(){
              //  Construction de l'objet
  beginShape();
  stroke(0);
  fill(c,trans); // tu peut générer le code de couleur --> Outils --> Sélecteur de couleur
  strokeWeight(2);
  vertex(x,y);
  vertex(x+(t/4),y);
  vertex(x+(t/2),y+(t/4));
  vertex(x+((3*t)/4),y);
  vertex(x+t,y);
  vertex(x+t,y+(t/4));
  vertex(x+((3*t)/4),y+(t/2));
  vertex(x+t,y+((3*t)/4));
  vertex(x+t,y+t);
  vertex(x+((3*t)/4),y+t);
  vertex(x+(t/2),y+((3*t)/4));
  vertex(x+(t/4),y+t);
  vertex(x,y+t);
  vertex(x,y+((3*t)/4));
  vertex(x+(t/4),y+(t/2));
  vertex(x,y+(t/4));
  endShape(CLOSE);
}
}
