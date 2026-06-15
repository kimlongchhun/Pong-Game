void gameover() {
  if (leftscore > rightscore) {
    textSize(100);
    text("LEFT SIDE WIN", width/2, 200);
  } else {
    if (leftscore < rightscore) {
      textSize(100);
      text("RIGHT SIDE WIN", width/2, 200);
    }
  }
}

void gameoverClicks() {
}
