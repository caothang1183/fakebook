class DateTimeUtil {
  static String getTimeAgo(String timeAgo) {
    int minutes = DateTime.now().difference(DateTime.parse(timeAgo)).inMinutes;
    int hours = DateTime.now().difference(DateTime.parse(timeAgo)).inHours;
    if(minutes > 0 && minutes < 60){
      return "$minutes mins";
    }
    if(minutes >= 60){
      return "$hours hrs";
    }
    return "just now";
  }
}
