import '../colors.dart';
import '../ramp.dart';

/// The “PuOr” discrete diverging color scheme of size *k* in 3–11.
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
///     module.define("colors", d3.schemePuOr[11]);
///     module.variable(inspector).define("out", ["colors"], definition);
///
///     function definition(colors) {
///         const canvas = d3.create("canvas")
///             .style("height", "40px")
///             .node();
///
///         const n = colors.length;
///         const r = 40;
///         canvas.width = n * r;
///         canvas.height = r;
///         const context = canvas.getContext("2d");
///         for (let i = 0; i < n; ++i) {
///           context.fillStyle = colors[i];
///           context.fillRect(i * r, 0, r, r);
///         }
///
///         return canvas;
///     }
/// </script>
///
/// {@category Diverging schemes}
final List<List<String>?> schemePuOr = List.filled(12, null)
  ..setRange(
      3,
      12,
      [
        "998ec3f7f7f7f1a340",
        "5e3c99b2abd2fdb863e66101",
        "5e3c99b2abd2f7f7f7fdb863e66101",
        "542788998ec3d8daebfee0b6f1a340b35806",
        "542788998ec3d8daebf7f7f7fee0b6f1a340b35806",
        "5427888073acb2abd2d8daebfee0b6fdb863e08214b35806",
        "5427888073acb2abd2d8daebf7f7f7fee0b6fdb863e08214b35806",
        "2d004b5427888073acb2abd2d8daebfee0b6fdb863e08214b358067f3b08",
        "2d004b5427888073acb2abd2d8daebf7f7f7fee0b6fdb863e08214b358067f3b08"
      ].map(colors));

final _interpolatePuOr = ramp(schemePuOr);

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from the “PuOr” diverging color scheme represented as an RGB string.
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
///     module.define("color", [], () => d3.interpolatePuOr);
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
/// {@category Diverging schemes}
String interpolatePuOr(num t) => _interpolatePuOr(t);
