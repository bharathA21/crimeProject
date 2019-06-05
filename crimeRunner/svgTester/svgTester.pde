PShape bot;
String [] place = {"Apple_Valley","Rosemount","WSTP","SSTP","Eagan","Burnsville","TheRest","Lakeville"};

void setup() {
  size(1200, 900);
  // The file "bot1.svg" must be in the data folder
  // of the current sketch to load successfully
  bot = loadShape("C:\\Users\\aashi\\Desktop\\ADVCompSci18-19\\maps\\crimeRunner\\map3.svg");
} 

void draw(){
  background(102);
    fill(114, 219, 10);
  shape(bot, 27, 49, 800, 600);  // Draw at coordinate (110, 90) at size 100 x 100
  //shape(bot, 280, 40);  // Draw at coordinate (280, 40) at the default size
    theRest();
  rsmt();
  av();
  wsp();
  eg();
  bv();
  lk();


}

void rsmt(){
  PShape rsmt = bot.getChild("Rosemount");
  rsmt.disableStyle();
  fill(123, 115, 236);
  shape(rsmt,39,30,778,668);
  fill(255,0,0);
  text("Rosemount",350,275);
}
void av(){
  PShape av = bot.getChild("Apple_Valley");
  av.disableStyle();
  fill(203, 12, 236);
  shape(av,8,21,890,690);
   fill(255,0,0);
  text("Apple Valley",215,300);
}
void wsp(){
  PShape wsp = bot.getChild("WSTP");
  wsp.disableStyle();
  fill(213, 10, 0);
    shape(wsp,10,40,850,650);
     fill(255,0,0);
  text("WSTP",375,125);

}
void eg(){
  PShape eg = bot.getChild("Eagan");
  eg.disableStyle();
  fill(232, 104, 12);
    shape(eg,15,40,850,650);
     fill(255,0,0);
  text("Eagan",250,170);

}
void bv(){
  PShape bv = bot.getChild("Burnsville");
  bv.disableStyle();
  fill(255,196,13);
    shape(bv,20,35,850,650);
     fill(255,0,0);
  text("Burnsville",100,300);

}
void theRest(){
  PShape tr = bot.getChild("TheRest");
  tr.disableStyle();
  fill(114, 219, 10);
  shape(tr, 27, 49, 800, 600);  
  //PShape tr1 = loadShape("C:\\Users\\aashi\\Desktop\\ADVCompSci18-19\\maps\\crimeRunner\\map3.svg");
  //tr1.disableStyle();
  //fill(114, 219, 10);
  //shape(tr1, 27, 49, 800, 600);  

  
}
void lk(){
   PShape lk = bot.getChild("Lakeville");
  lk.disableStyle();
  fill(115, 176, 226);
  shape(lk, 24, 49, 810, 610); 
  fill(255,0,0);
 text("Lakeville",120,375); 
}
