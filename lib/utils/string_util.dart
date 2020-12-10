class StringUtil {
  static String shortcutNumber(int number) {
    if (number >= 1000000) {
      String shortcut = (number / 1000000).round().toString();
      return "${shortcut}M";
    }
    if (number >= 1000) {
      String shortcut = (number / 1000).round().toString();
      return "${shortcut}K";
    }
    return number.toString();
  }

}
