class Obj {
  float x,y; // x : X-Position ** y : Y-Position
  float t;//t : taille de l'objet
  int c;// c : couleur de l'objet
  Obj(float xpos, float ypos,float taille, int col) {
  x = xpos;
  y = ypos;
  t = taille;     // Constructeur
  c = col;
}
  void show()
  {               // Construction de l'objet
   beginShape();
   fill(c);
   noStroke();
   vertex(x,y);
   vertex(x+t,y);
   vertex(x+t,y);
   vertex(x+(t/2),y+(t-10));
   endShape(CLOSE);
  }
}
