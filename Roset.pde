class Roset {
  float xpos,ypos,t;//xpos : X-position ** ypos : Y-position ** t : taille de l'objet
  float p1,p2,p3,p4; // les points pour faire une bonne construction
  int c; // c : couleur de l'objet
  Roset(float x, float y,float point1, float point2, float point3, float point4, float taille, int couleur){
    xpos = x;
    ypos = y;
    p1 = point1;  // Constructeur
    p2 = point2;
    p3 = point3;
    p4 = point4;
    t = taille;
    c = couleur;
  }
  void show(){
    // les point sont bien calculer , selon plusieur examples
    p1 = p1 + (7*t)/10;
    p2 = p2 + ((t/5)*2);
    p3 = p3 + (t/2);
    p4 = p4 + 0;
    beginShape();
    fill(c);
  vertex(xpos + p1 ,ypos + p2);  // !
  vertex(xpos + p3,ypos + p4);  //  /
  vertex(xpos,ypos);           //  /\         
  vertex(xpos + p4,ypos + p3); 
                              //   !
  vertex(xpos + p2,ypos + p1);
  endShape();
    
  }
  
}
