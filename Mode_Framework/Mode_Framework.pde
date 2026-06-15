//Kimlong Chhun
// Pong

//Mode Framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;



//Paddle and Ball Variables (entity variables)
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy;


//Color Pallete
color black      = #0D0D0D;
color white      = #FFFFFF;
color cyan       = #00F5FF;
color pink       = #FF2E88;
color purple     = #9D4EDD;
color yellow     = #FFD60A;
color navy = #0B132B;


//Keyboard Variables
boolean wkey, skey, upkey, downkey;

//Scoring
int leftscore, rightscore, timer;


void setup() {
  size (900, 900);
  mode = INTRO;

  //Initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 150;

  rightx = width;
  righty = height/2;
  rightd = 150;

  //Initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 90;
  
  //Moving
  vx = 5;
  vy = 3;
  
  //Initialize Keyboard
  wkey = skey = upkey = downkey = false;
  
  //Timer
  timer = 50;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}

void tactile(int x, int y, int w, int h) {

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(white);
  } else {
    stroke(black);
  }
}
