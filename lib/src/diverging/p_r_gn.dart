import '../colors.dart';
import '../ramp.dart';

/// The “PRGn” discrete diverging color scheme of size *k* in 3–11.
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
///     module.define("colors", d3.schemePRGn[11]);
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
final List<List<String>?> schemePRGn = List.filled(12, null)
  ..setRange(
      3,
      12,
      [
        "af8dc3f7f7f77fbf7b",
        "7b3294c2a5cfa6dba0008837",
        "7b3294c2a5cff7f7f7a6dba0008837",
        "762a83af8dc3e7d4e8d9f0d37fbf7b1b7837",
        "762a83af8dc3e7d4e8f7f7f7d9f0d37fbf7b1b7837",
        "762a839970abc2a5cfe7d4e8d9f0d3a6dba05aae611b7837",
        "762a839970abc2a5cfe7d4e8f7f7f7d9f0d3a6dba05aae611b7837",
        "40004b762a839970abc2a5cfe7d4e8d9f0d3a6dba05aae611b783700441b",
        "40004b762a839970abc2a5cfe7d4e8f7f7f7d9f0d3a6dba05aae611b783700441b"
      ].map(colors));

final _interpolatePRGn = ramp(schemePRGn);

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from the “PRGn” diverging color scheme represented as an RGB string.
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
///     module.define("color", [], () => d3.interpolatePRGn);
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
String interpolatePRGn(num t) => _interpolatePRGn(t);
