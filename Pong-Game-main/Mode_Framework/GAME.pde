void game() {
  background(navy);


  //Center Line'
  stroke(yellow);
  line(width/2, 0, width/2, height);
  noStroke();

  //Outline of Paddle and Ball
  stroke(pink);
  strokeWeight(5);

  //Paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  if (wkey == true) lefty = lefty - 6;
  if (skey == true) lefty = lefty + 6;
  if (upkey == true) righty = righty - 6;
  if (downkey == true) righty = righty + 6;




  //Ball
  circle(ballx, bally, balld);
  if (timer < 0) {
    ballx += vx;
    bally += vy;
  }
  //Paddle Limit
  if (lefty <= leftd/2) {
    lefty = leftd/2;
  }
  if (lefty >= height - leftd/2) {
    lefty = height - leftd/2;
  }

  if (righty <= rightd/2) {
    righty = rightd/2;
  }
  if (righty >= height - rightd/2) {
    righty = height - rightd/2;
  }

  //Bounce off the Wall
  if (bally <= balld/2 || bally >= height-balld/2) {
    vy = vy * -2;
  }
  //Bouncing
  float dL = dist(ballx, bally, leftx, lefty);

  if (dL <= balld/2 + leftd/2) {
    vx = (ballx - leftx) / 30;
    vy = (bally - lefty) / 30;

    vx *= 2;
    vy *= 2;
  }
  float dR = dist(ballx, bally, rightx, righty);
  if (dR <= balld/2 + rightd/2) {
    vx = (ballx - rightx) / 30;
    vy = (bally - righty) / 30;

    vx *= 2;
    vy *= 2;
  }

  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 50;
  }

  if (ballx > 900) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 50;
  }

  //scoreboard
  textSize(50);
  fill(cyan);
  text(leftscore, width/4, 100);
  fill(white);
  text(rightscore, 3*width/4, 100);
  text(timer, 3*width/4, 800);

  //Timer Ticking
  timer = timer - 1;

  noStroke();
  if (rightscore == 3) {
    mode = GAMEOVER;
  } else {
    if (leftscore == 3)
      mode = GAMEOVER;
  }
 if (AI == false) {
    if (upkey == true) righty = righty - 6;
    if (downkey == true) righty = righty + 5;
  } else {
    if (AI) {
      if (bally > lefty) lefty += 6;
      if (bally < lefty) lefty -= 6;
    }
  
}
}

void gameClicks() {
}
