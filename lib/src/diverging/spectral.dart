import '../colors.dart';
import '../ramp.dart';

/// The “Spectral” discrete diverging color scheme of size *k* in 3–11.
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
///     module.define("colors", d3.schemeSpectral[11]);
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
final List<List<String>?> schemeSpectral = List.filled(12, null)
  ..setRange(
      3,
      12,
      [
        "fc8d59ffffbf99d594",
        "d7191cfdae61abdda42b83ba",
        "d7191cfdae61ffffbfabdda42b83ba",
        "d53e4ffc8d59fee08be6f59899d5943288bd",
        "d53e4ffc8d59fee08bffffbfe6f59899d5943288bd",
        "d53e4ff46d43fdae61fee08be6f598abdda466c2a53288bd",
        "d53e4ff46d43fdae61fee08bffffbfe6f598abdda466c2a53288bd",
        "9e0142d53e4ff46d43fdae61fee08be6f598abdda466c2a53288bd5e4fa2",
        "9e0142d53e4ff46d43fdae61fee08bffffbfe6f598abdda466c2a53288bd5e4fa2"
      ].map(colors));

final _interpolateSpectral = ramp(schemeSpectral);

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from the “Spectral” diverging color scheme represented as an RGB string.
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
///     module.define("color", [], () => d3.interpolateSpectral);
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
String interpolateSpectral(num t) => _interpolateSpectral(t);
