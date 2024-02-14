import 'package:d4_color/d4_color.dart';
import 'package:d4_interpolate/d4_interpolate.dart';

final _interpolateWarm = interpolateCubehelixLong(
    Cubehelix(-100, 0.75, 0.35), Cubehelix(80, 1.50, 0.8));

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from a 180° rotation of
/// [Niccoli’s perceptual rainbow](https://mycarta.wordpress.com/2013/02/21/perceptual-rainbow-palette-the-method/),
/// represented as an RGB string.
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
///     module.define("color", [], () => d3.interpolateWarm);
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
/// {@category Sequential schemes}
String interpolateWarm(num t) => _interpolateWarm(t);

final _interpolateCool = interpolateCubehelixLong(
    Cubehelix(260, 0.75, 0.35), Cubehelix(80, 1.50, 0.8));

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from
/// [Niccoli’s perceptual rainbow](https://mycarta.wordpress.com/2013/02/21/perceptual-rainbow-palette-the-method/),
/// represented as an RGB string.
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
///     module.define("color", [], () => d3.interpolateWarm);
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
/// {@category Sequential schemes}
String interpolateCool(num t) => _interpolateCool(t);

final _c = Cubehelix(double.nan, double.nan, double.nan);

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from [interpolateWarm] scale from \[0.0, 0.5\] followed by the
/// [interpolateCool] scale from \[0.5, 1.0\], thus implementing the cyclical
/// [less-angry rainbow](https://observablehq.com/@mbostock/sinebow) color
/// scheme.
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
///     module.define("color", [], () => d3.interpolateRainbow);
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
String interpolateRainbow(num t) {
  if (t < 0 || t > 1) t -= t.floor();
  var ts = (t - 0.5).abs();
  _c.h = 360 * t - 100;
  _c.s = 1.5 - 1.5 * ts;
  _c.l = 0.8 - 0.9 * ts;
  return _c.toString();
}
