import '../colors.dart';
import '../ramp.dart';

/// The “YlOrRd” discrete sequential color scheme of size *k* in 3–9.
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
///     module.define("colors", d3.schemeYlOrRd[9]);
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
/// {@category Sequential schemes}
final List<List<String>?> schemeYlOrRd = List.filled(10, null)
  ..setRange(
      3,
      10,
      [
        "ffeda0feb24cf03b20",
        "ffffb2fecc5cfd8d3ce31a1c",
        "ffffb2fecc5cfd8d3cf03b20bd0026",
        "ffffb2fed976feb24cfd8d3cf03b20bd0026",
        "ffffb2fed976feb24cfd8d3cfc4e2ae31a1cb10026",
        "ffffccffeda0fed976feb24cfd8d3cfc4e2ae31a1cb10026",
        "ffffccffeda0fed976feb24cfd8d3cfc4e2ae31a1cbd0026800026"
      ].map(colors));

final _interpolateYlOrRd = ramp(schemeYlOrRd);

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from the “YlOrRd” sequential color scheme represented as an RGB string.
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
///     module.define("color", [], () => d3.interpolateYlOrRd);
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
String interpolateYlOrRd(num t) => _interpolateYlOrRd(t);
