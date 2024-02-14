List<String> colors(String specifier) {
  var n = (specifier.length / 6).truncate(), colors = List.filled(n, ""), i = 0;
  while (i < n) {
    colors[i] = "#${specifier.substring(i * 6, ++i * 6)}";
  }
  return colors;
}
