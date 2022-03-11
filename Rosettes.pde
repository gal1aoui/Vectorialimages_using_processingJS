class Rosettes extends Ros{
 int n; // nombre d'objets
 Ros k; // k : l'objet Ros
 Rosettes(float x, float y, float t, int c, int trans, int np){
   super(x,y,t,c,trans);
   n = np; //Constructeur
 }
 float rot = 0; // c'est la début de degré de rotation
 
 void show(){
   float angle = 90/n; // degré de rotation selon le nombre d'objets
   for(int i = 1; i<= n ; i++){
  pushMatrix();
  translate(x,y); // translation sur les axes 
  rotate(radians(rot));  // rotation
  translate((-t/2)-x,(-t/2)-y); // translation sur l'objet pour obtenir translation centré

  k = new Ros(x,y,t,c,trans);
k.show();
rot += angle;
popMatrix();
}
   
   
   
 }
  
  
  
}
