import '../colors.dart';
import '../ramp.dart';

/// The “PuRd” discrete sequential color scheme of size *k* in 3–9.
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
///     module.define("colors", d3.schemePuRd[9]);
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
final List<List<String>?> schemePuRd = List.filled(10, null)
  ..setRange(
      3,
      10,
      [
        "e7e1efc994c7dd1c77",
        "f1eef6d7b5d8df65b0ce1256",
        "f1eef6d7b5d8df65b0dd1c77980043",
        "f1eef6d4b9dac994c7df65b0dd1c77980043",
        "f1eef6d4b9dac994c7df65b0e7298ace125691003f",
        "f7f4f9e7e1efd4b9dac994c7df65b0e7298ace125691003f",
        "f7f4f9e7e1efd4b9dac994c7df65b0e7298ace125698004367001f"
      ].map(colors));

final _interpolatePuRd = ramp(schemePuRd);

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from the “PuRd” sequential color scheme represented as an RGB string.
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
///     module.define("color", [], () => d3.interpolatePuRd);
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
String interpolatePuRd(num t) => _interpolatePuRd(t);
