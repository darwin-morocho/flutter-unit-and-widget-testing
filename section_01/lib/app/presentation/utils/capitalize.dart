/// capitalize a given string
///
/// "hello" -> "Hello"
String capitalize(String text) {
  if (text.isEmpty) {
    return text;
  }
  return '${text[0].toUpperCase()}${text.substring(1).toLowerCase()}';
}
