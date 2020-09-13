
PFont f;  
int [] edr;
float [] kgr;
float [] etvidedr;
float [] etvidagr;
float [] etvidmaks;
float [] etagrsk;
int [] etvidnr;
int etapuskaits=0;
String [] rinda;
int w=0;
int ww=0;
int vieta=0;
int kluda=0;
float summa25=0;
float kgrmom=0;
float  kgrdem=0;
float indekss;
int indekssint=0;
int i=0;
String teksts;
int skaits=0;
int skaitskgr=0;
int kopskaits=0;
int z=0;
int iepr=0;
float sum=0;
int sumagr=0;
int sk=0;
int skagr=0;
float sumkgr=0;
int v=0;
int blokskaits=14;
int zals=0;
int sarkans=0;
int rinduskaits=0;
int etaps=1;
float maks=0;

PrintWriter output1;

void setup() {
  size (1000,500);
  background(#266FA5);
  fill(#EDE378);
  textSize(24);
  f = createFont("Arial",16,true);
  textFont(f,16);
  edr = new int [100000];
  kgr = new float [100000];
  etvidedr = new float [100000];
  etvidagr = new float [100000];
  etvidmaks = new float [100000];
  etagrsk = new float [100000];
  etvidnr = new int [100000];
  rinda = new String [10000];
  rinda = loadStrings("file.txt");
  rinduskaits=rinda.length;
  output1 = createWriter("edrdataarzimem.txt");
  indekss=random(1,24);
  indekssint=int(indekss);
  
    for (w=1; w<rinduskaits; w++){edr[w]=int(rinda[w]);}
    // for (ww=1; ww<=20; ww++){etaps=etaps+20; text(edr[ww],400,etaps);}

while (ww<rinduskaits-1){
ww=ww+1;
if (edr[ww]>9000){
sum=0;
sumagr=0;
skagr=0;
 for (z=ww+2; z<=ww+10; z++){sum=sum+edr[z]; if(edr[z]>edr[z-1]){sumagr=sumagr+edr[z]-edr[z-1]; skagr=skagr+1;}}
 maks=0;
 for (z=ww+2; z<=ww+10; z++){if(edr[z]-edr[z-1]>maks){maks=edr[z]-edr[z-1];}}
sum=sum/9;
etaps=etaps+20;
text(edr[ww]/10000, 150, etaps);
text(sum, 300, etaps);
text(sumagr, 450, etaps);
text(skagr, 600, etaps);
text(maks, 750, etaps);
etapuskaits=etapuskaits+1;
etvidedr[etapuskaits]=sum;
etvidagr[etapuskaits]=sumagr;
etvidmaks[etapuskaits]=maks;
etagrsk[etapuskaits]=skagr;
etvidnr[etapuskaits]=edr[ww]/10000;
} // beidzas "if (edr[w]>10000){"
} // beidzas "while (w<rinduskaits-1){"

// etaps=0; for (v=1; v<=etapuskaits; v++){etaps=etaps+20; text(etvidnr[v], 700, etaps);}

sum=0;
sk=0;
for (v=1; v<=etapuskaits-1; v++){
if (etvidnr[v]>=1 && etvidnr[v]<=4){
sum=sum+etvidedr[v];
sk=sk+1;
}
}
sum=sum/sk;
text("NERVOZITĀTE = ", 50, 450 );
text(sum, 300, 450 );

sum=0;
sk=0;
for (v=1; v<=etapuskaits-1; v++){
if (etvidnr[v]>=1 && etvidnr[v]<=4){
sum=sum+etvidagr[v];
sk=sk+1;
}
}
sum=sum/sk;
text(sum, 450, 450 );  
  
sum=0;
sk=0;
for (v=1; v<=etapuskaits-1; v++){
if (etvidnr[v]>=1 && etvidnr[v]<=4){
sum=sum+etagrsk[v];
sk=sk+1;
}
}
sum=sum/sk;
text(sum, 600, 450 );  

sum=0;
sk=0;
for (v=1; v<=etapuskaits-1; v++){
if (etvidnr[v]>=1 && etvidnr[v]<=4){
sum=sum+etvidmaks[v];
sk=sk+1;
}
}
sum=sum/sk;
text(sum, 750, 450 );  

// #################################

sum=0;
sk=0;
for (v=1; v<=etapuskaits-1; v++){
if (etvidnr[v]>4 && etvidnr[v]<=16){
sum=sum+etvidedr[v];
sk=sk+1;
}
}
sum=sum/sk;
text("MIERS = ", 50, 475 );
text(sum, 300, 475 );

sum=0;
sk=0;
for (v=1; v<=etapuskaits-1; v++){
if (etvidnr[v]>4 && etvidnr[v]<=16){
sum=sum+etvidagr[v];
sk=sk+1;
}
}
sum=sum/sk;
text(sum, 450, 475 );

sum=0;
sk=0;
for (v=1; v<=etapuskaits-1; v++){
if (etvidnr[v]>4 && etvidnr[v]<=16){
sum=sum+etagrsk[v];
sk=sk+1;
}
}
sum=sum/sk;
text(sum, 600, 475 );

sum=0;
sk=0;
for (v=1; v<=etapuskaits-1; v++){
if (etvidnr[v]>4 && etvidnr[v]<=16){
sum=sum+etvidmaks[v];
sk=sk+1;
}
}
sum=sum/sk;
text(sum, 750, 475 );

}  // beidzas "setup"


void draw() {
   
} // void draw