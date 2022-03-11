class Shaps extends Shap2 {
  int np;
  Shap2 o;
  Shaps(float x, float y,float t,int c, int c1,  int n){
    super(x,y,t,c,c1);
    np = n;
  } 
  float angle; 
  float rota = 0; // c'est la début de degré de rotation
  void show(){ 
    angle = 90/np; // degré de rotation selon le nombre d'objets
    
for(int i = 1 ; i<= np ;i++){ //travail selon le nombre d'objet np  
  pushMatrix();
   translate(x,y);
   rotate(radians(rota));
   translate((- t/2)-x,(- t/2)-y);
   o = new Shap2(x,y,t,c,c1);
   o.show();
   popMatrix();
   rota += angle;
   println(rota,np);
    }
}  
}
