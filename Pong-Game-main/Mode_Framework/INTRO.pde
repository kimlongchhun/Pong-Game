void intro() {

  background(black);
  textAlign(CENTER, CENTER);
  fill(white);

  textSize(80);
  text("PONG GAME", width/2, 200);

  stroke(white);
  strokeWeight(3);

  tactile(150, 420, 250, 100);
  fill(purple);
  rect(150, 420, 250, 100);

  fill(white);
  textSize(30);
  text("ONE PLAYER", 275, 470);

  tactile(500, 420, 250, 100);
  fill(purple);
  rect(500, 420, 250, 100);

  fill(white);
  text("TWO PLAYER", 625, 470);
  
}

void introClicks() {
  if (mouseX > 250 && mouseX < 650 && mouseY > 420 && mouseY < 520) {
    mode = GAME;
  }
    //AI
  if (clickedOnRect(150, 420, 250, 100)){
    mode = GAME;
    AI = true;
  }
  //2 Player
  if (clickedOnRect(500, 420, 250, 100)){
    mode = GAME;
    AI = false;
  }
}
