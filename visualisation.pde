String[] delayData;
Week[] weeks;
float lightSize = 40;

void setup() {
  size(620, 220);
  textAlign(RIGHT);
  textSize(18);
  ellipseMode(CENTER);

  delayData = loadStrings("cc.csv");
  if (delayData == null || delayData.length == 0) {
    println("Error loading CSV file");
    exit();
  }

  // Group data by weeks
  HashMap<Integer, ArrayList<String[]>> weekDataMap = new HashMap<>();
  for (String line : delayData) {
    String[] dataItems = split(line, ",");
    int weekNo = int(dataItems[0]);
    if (!weekDataMap.containsKey(weekNo)) {
      weekDataMap.put(weekNo, new ArrayList<>());
    }
    weekDataMap.get(weekNo).add(dataItems);
  }

  // Initialize weeks array
  weeks = new Week[weekDataMap.size()];
  int index = 0;
  for (int weekNo : weekDataMap.keySet()) {
    ArrayList<String[]> weekDays = weekDataMap.get(weekNo);
    weeks[index] = new Week(weekNo, weekDays.toArray(new String[0][]));
    index++;
  }
}

void draw() {
  background(255);  // Clear the background each time

  for (Week week : weeks) {
    week.update();
    week.display();
  }
}
