import 'package:d4_interpolate/d4_interpolate.dart';

String Function(num) ramp(List<List<String>?> scheme) =>
    interpolateRgbBasis(scheme[scheme.length - 1]!);
