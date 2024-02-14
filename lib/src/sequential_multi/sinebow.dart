import 'dart:math';

import 'package:d4_color/d4_color.dart';

final _c = Rgb(double.nan, double.nan, double.nan);
const _pi_1_3 = pi / 3, _pi_2_3 = pi * 2 / 3;

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from the “sinebow” color scheme by
/// [Jim Bumgardner](https://krazydad.com/tutorials/makecolors.php) and
/// [Charlie Loyd](http://basecase.org/env/on-rainbows).
///
/// <div id="obs">
///     <div id="in"></div>
///     <div id="out"></div>
/// </div>
///
/// <script type="module">
///
///     import { Runtime, Inspector, Library } from "https://cdn.jsdelivr.net/npm/@observablehq/runtime@5/dist/runtime.js";
///     import * as d3 from "https://cdn.jsdelivr.net/npm/d3@7/+esm";
///
///     const obs = d3.select("#obs");
///
///     const runtime = new Runtime();
///     const module = runtime.module();
///     const inspector = new Inspector(obs.select("#out").node());
///
///     module.define("color", [], () => d3.interpolateSinebow);
///     module.define("n", 256);
///     module.variable(inspector).define("out", ["color", "n"], definition);
///
///     function definition(color, n) {
///         const canvas = d3.create("canvas")
///             .style("width", "100%")
///             .style("height", "40px")
///             .style("image-rendering", "-moz-crisp-edges")
///             .style("image-rendering", "pixelated")
///             .node();
///
///         canvas.width = n;
///         canvas.height = 1;
///         const context = canvas.getContext("2d");
///         for (let i = 0; i < n; ++i) {
///           context.fillStyle = color(i / (n - 1));
///           context.fillRect(i, 0, 1, 1);
///         }
///
///         return canvas;
///     }
/// </script>
///
/// {@category Cyclical schemes}
String interpolateSinebow(num t) {
  var x;
  t = (0.5 - t) * pi;
  _c.r = 255 * (x = sin(t)) * x;
  _c.g = 255 * (x = sin(t + _pi_1_3)) * x;
  _c.b = 255 * (x = sin(t + _pi_2_3)) * x;
  return _c.toString();
}
