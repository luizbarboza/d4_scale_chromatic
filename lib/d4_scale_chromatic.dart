/// This package provides sequential, diverging and categorical color schemes
/// designed to work with
/// [d4_scale](https://pub.dev/documentation/d4_scale/latest/d4_scale/d4_scale-library.html)’s
/// [ScaleOrdinal](https://pub.dev/documentation/d4_scale/latest/topics/Ordinal%20scales-topic.html)
/// and
/// [ScaleSequential](https://pub.dev/documentation/d4_scale/latest/topics/Sequential%20scales-topic.html).
///
/// Most of these schemes are derived from Cynthia A. Brewer’s
/// [ColorBrewer](http://colorbrewer2.org/). Since ColorBrewer publishes only
/// discrete color schemes, the sequential and diverging scales are interpolated
/// using [uniform B-splines](https://observablehq.com/@d3/colorbrewer-splines).
export 'src/d4_scale_chromatic.dart';
