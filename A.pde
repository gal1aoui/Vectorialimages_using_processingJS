Rosettes s;
Shap k;            // les objets qui peut utiliser
Shaps l;
float t = 100;
void setup(){
 size(1400,1000);
 smooth();
 background(255);
 dessin(width/2,height/2);
}

void dessin(float a, float b){ // cette fonction dessiner pour voir un seul objet  
  s = new Rosettes(a,b,200,#FC3908,64,4);  // et avec le shéma suivant tu peut construire plusieurs objet sous forme de matrice
  //l = new Shap(a,b,400,#0CF225,2); // qui construire un autre objet selon le vue
  //l.show();
  s.show();
}

/*void draw(){  //Shéma 1
  
for (int i = 0; i< width; i+= t){  
   for(int j = 0; j< height; j += t + (t/4)){
       if(i % (t*2) == 0){
         dessin(i,j+(t/4));
        // k = new Shap(i,j+175,#22F707,0,2);
       }else{
         dessin(i,j+(t/2)+(t/4)+(t/8));
        //s = new Shap(i,j+(t/2)+(t/4)+(t/8),t,#F3F707,2);
       }
      // k.show();
        
        
    
        
   }
  }
  
  */
//}
