/// capitalize a given string
///
/// "hello" -> "Hello"
String capitalize(String text) {
  return '${text[0].toUpperCase()}${text.substring(1)}';
}
