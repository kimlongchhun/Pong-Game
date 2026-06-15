void intro() {

  background(black);
  
  textAlign(CENTER, CENTER);
  fill(white);
  
  textSize(80);
  text("PONG GAME", width/2, 200);
  stroke(white);
  
  strokeWeight(3);
  tactile(250, 420, 400, 100);
  fill(purple);
  
  rect(250, 420, 400, 100);
  fill(white);
  textSize(40);
  text("ENTER", width/2, 470);
}

void introClicks() {
  if (mouseX > 250 && mouseX < 650 && mouseY > 420 && mouseY < 520) {
    mode = GAME;
  }
}
