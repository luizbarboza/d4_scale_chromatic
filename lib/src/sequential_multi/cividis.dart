import 'dart:math';

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from the “cividis” color vision deficiency-optimized color scheme designed
/// by
/// [Nuñez, Anderton, and Renslow](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0199239),
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
///     module.define("color", [], () => d3.interpolateCividis);
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
String interpolateCividis(num t) {
  t = max(0, min(1, t));
  return "rgb(${max(0, min(255, (-4.54 - t * (35.34 - t * (2381.73 - t * (6402.7 - t * (7024.72 - t * 2710.57))))).round()))}, ${max(0, min(255, (32.49 + t * (170.73 + t * (52.82 - t * (131.46 - t * (176.58 - t * 67.37))))).round()))}, ${max(0, min(255, (81.24 + t * (442.36 - t * (2482.43 - t * (6167.24 - t * (6614.94 - t * 2475.67))))).round()))})";
}
