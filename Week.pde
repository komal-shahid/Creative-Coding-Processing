class Week {
  int weekNo;
  String[][] days;
  float[] xPositions;  // Array to store x positions of ellipses
  float[] speeds;      // Array to store speeds based on delay type

  Week(int weekNo, String[][] days) {
    this.weekNo = weekNo;
    this.days = days;
    this.xPositions = new float[days.length];
    this.speeds = new float[days.length];

    for (int i = 0; i < days.length; i++) {
      // Initialize x positions
      xPositions[i] = lightSize * 1.5;

      // Set speeds based on delay type
      String delayType = days[i][2].toLowerCase();
      if (delayType.equals("short")) {
        speeds[i] = 5; // Fast speed
      } else if (delayType.equals("medium")) {
        speeds[i] = 2; // Medium speed
      } else if (delayType.equals("long")) {
        speeds[i] = 0.5; // Slow speed
      } else {
        speeds[i] = 0;  // No movement for undefined types
      }
    }
  }

  void update() {
    for (int i = 0; i < days.length; i++) {
      xPositions[i] += speeds[i];
      if (xPositions[i] > width) {
        xPositions[i] = 0; // Wrap around screen
      }
    }
  }

  void display() {
    for (int i = 0; i < days.length; i++) {
      float y = lightSize + i * lightSize;
      String dayNo = days[i][1];
      String delayType = days[i][2];
      color fillColour = getColourForDelay(delayType);

      fill(32, 128);
      text(dayNo, lightSize * 1.5, y);
      noStroke();
      fill(fillColour);
      ellipse(xPositions[i], y, lightSize * 0.8, lightSize * 0.8);

      // Mouse interaction
      if (dist(mouseX, mouseY, xPositions[i], y) < lightSize * 0.4) {
        stroke(32, 128);
        ellipse(xPositions[i], y, lightSize * 0.9, lightSize * 0.9);
        fill(16, 200);
        text(delayType, mouseX, mouseY - 10);
      }
    }
  }

  color getColourForDelay(String delayType) {
    if (delayType.equals("short")) {
      return color(32, 200, 32, 128); // Green
    } else if (delayType.equals("medium")) {
      return color(255, 160, 32); // Amber
    } else if (delayType.equals("long")) {
      return color(240, 64, 64); // Red
    } else {
      return color(255, 255, 255); // Default
    }
  }
}
