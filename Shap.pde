class Shap extends Obj {
int np; // nombre d'objets
  Shap(float x, float y,float t, int c, int n){
    super(x,y,t,c);
    np = n; //Constructeur
  }
  Obj k;// k : l'objet Obj
float angle;
float dw,dh; // dw : Décalage de l'axe - X ** dh : Décalage de l'axe - Y
float dl = 1; // c'est la translation selon la rotation pour etre bien décaler
float rot = 0; // c'est la début de degré de rotation

 void show(){
 if(np == 2){ //s'il ya 2 objets on va travailler sur l'axe Y uniquement
   dh = ((t/(np*2))-((t/100)*(np*3)));
   for(int i = 1 ; i<= np ;i++){  
    angle = 360/np; // degré de rotation selon le nombre d'objets
  pushMatrix();
   translate(x ,y + (dh) );
   rotate(radians(rot));
   translate((- t/2)-x,(- t/2)-y);
   k = new Obj(x,y,t,c);
   k.show();
  popMatrix();
   rot += angle; // avancement selon le d'egré
   dh *= -1; // translation comme miroir
}
 }else{
for(int i = 1 ; i<= np ;i++){   //s'il ya 4 objets on va travailler sur l'axe Y uniquement
  angle = 360/np;
  if(np == 4){
  dl *= -1;
    if(i % 2 != 0){
      dw = 0;
      dh = ((t/(np*2))-((t/100)*(np*8)));
    }
    if (i % 2 == 0 ){
      dh = 0;
      dw = ((t/(np*2))-((t/100)*(np*8)));
    }
    if(i % 3 == 0){
      dl = 1;
    }
    dh *= dl;
    dw *= dl;
  }else { //s'il ya <4 objets on va travailler sur l'axe Y uniquement
    dh = 0;
    dw = 0;
  }
println(i," : ","dh = ",dh, "dw = ",dw," -- ",dl);
pushMatrix();
   translate(x + (dw) ,y + (dh) );
   rotate(radians(rot));
   translate((- t/2)-x,(- t/2)-y);
   k = new Obj(x,y,t,c);
   k.show();
popMatrix();
rot += angle;
}
}
}
}
