class StudentList {
  late List<Map<String, dynamic>> studentData;

  // Constructor for initial value
  StudentList(this.studentData);

  Map<String, double> getAverageScores() {

    // Empty map to store student name with their average score
    Map<String, double> averages = {};

    for (var eachStudent in studentData) {
      String name = eachStudent["name"]; // Fixed variable name here
      List<int> scores = List<int>.from(eachStudent["scores"]); // List of scores

      // Calculate total score
      int total = 0;
      for (int score in scores) {
        total += score;
      }

      // Calculate the average score, rounded to 2 decimal places
      double average = total / scores.length;
      average = double.parse(average.toStringAsFixed(2));

      averages[name] = average;
    }

    // Convert the map entries to a list for sorting
    List<MapEntry<String, double>> entries = averages.entries.toList();

    // Sort descending by average score
    entries.sort((a, b) => b.value.compareTo(a.value));

    // Convert back to a map and return
    Map<String, double> sortedAverages = {};
    for (var entry in entries) {
      sortedAverages[entry.key] = entry.value;
    }

    return sortedAverages;
  }

  void displaySortedAverages() {
    var sorted = getAverageScores(); // Call the correct method here
    print(sorted);
  }
}

