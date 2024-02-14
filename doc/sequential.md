Sequential color schemes are available as continuous interpolators (often used with [ScaleSequential](https://pub.dev/documentation/d4_scale/latest/topics/Sequential%20scales-topic.html)) and as discrete schemes (often used with [ScaleOrdinal](https://pub.dev/documentation/d4_scale/latest/topics/Ordinal%20scales-topic.html)).

Each discrete scheme, such as [schemeBlues](https://pub.dev/documentation/d4_scale_chromatic/latest/d4_scale_chromatic/schemeBlues.html), is represented as an array of arrays of hexadecimal color strings. The *k*th element of this array contains the color scheme of size *k*; for example, `schemeBlues[9]` contains an array of nine strings representing the nine colors of the blue sequential color scheme. Sequential color schemes support a size *k* ranging from 3 to 9.

To create a sequential discrete nine-color scale using the [Blues](https://pub.dev/documentation/d4_scale_chromatic/latest/d4_scale_chromatic/schemeBlues.html) color scheme:

```dart
final color = ScaleOrdinal(range: schemeBlues[9]);
```

To create a sequential continuous color scale using the [Blues](https://pub.dev/documentation/d4_scale_chromatic/latest/d4_scale_chromatic/interpolateBlues.html) color scheme:

```dart
final color = ScaleSequential(interpolator: interpolateBlues);
```