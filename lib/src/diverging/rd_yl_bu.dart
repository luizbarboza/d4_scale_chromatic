import '../colors.dart';
import '../ramp.dart';

/// The “RdYlBu” discrete diverging color scheme of size *k* in 3–11.
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
///     module.define("colors", d3.schemeRdYlBu[11]);
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
final List<List<String>?> schemeRdYlBu = List.filled(12, null)
  ..setRange(
      3,
      12,
      [
        "fc8d59ffffbf91bfdb",
        "d7191cfdae61abd9e92c7bb6",
        "d7191cfdae61ffffbfabd9e92c7bb6",
        "d73027fc8d59fee090e0f3f891bfdb4575b4",
        "d73027fc8d59fee090ffffbfe0f3f891bfdb4575b4",
        "d73027f46d43fdae61fee090e0f3f8abd9e974add14575b4",
        "d73027f46d43fdae61fee090ffffbfe0f3f8abd9e974add14575b4",
        "a50026d73027f46d43fdae61fee090e0f3f8abd9e974add14575b4313695",
        "a50026d73027f46d43fdae61fee090ffffbfe0f3f8abd9e974add14575b4313695"
      ].map(colors));

final _interpolateRdYlBu = ramp(schemeRdYlBu);

/// Given a number [t] in the range \[0,1\], returns the corresponding color
/// from the “RdYlBu” diverging color scheme represented as an RGB string.
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
///     module.define("color", [], () => d3.interpolateRdYlBu);
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
String interpolateRdYlBu(num t) => _interpolateRdYlBu(t);
