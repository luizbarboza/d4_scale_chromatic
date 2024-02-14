Diverging color schemes are available as continuous interpolators (often used with [ScaleSequential](https://pub.dev/documentation/d4_scale/latest/topics/Sequential%20scales-topic.html)) and as discrete schemes (often used with [ScaleOrdinal](https://pub.dev/documentation/d4_scale/latest/topics/Ordinal%20scales-topic.html)).

Each discrete scheme, such as [schemeBrBG](https://pub.dev/documentation/d4_scale_chromatic/latest/d4_scale_chromatic/schemeBrBG.html), is represented as an list of lists of hexadecimal color strings. The *k*th element of this list contains the color scheme of size *k*; for example, `schemeBrBG[9]` contains an list of nine strings representing the nine colors of the brown-blue-green diverging color scheme. Diverging color schemes support a size *k* ranging from 3 to 11.

To create a diverging continuous color scale using the [PiYG](https://pub.dev/documentation/d4_scale_chromatic/latest/d4_scale_chromatic/interpolatePiYG.html) color scheme:

```dart
final color = ScaleSequential(interpolator: interpolatePiYG);
```

To create a diverging discrete nine-color scale using the [PiYG](https://pub.dev/documentation/d4_scale_chromatic/latest/d4_scale_chromatic/schemePiYG.html) color scheme:

```dart
final color = ScaleOrdinal(range: schemePiYG[9]);
```