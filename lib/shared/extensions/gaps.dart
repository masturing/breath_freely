import 'package:flutter/material.dart';

extension GapExtensionNumber on int {
  /// Horizontal gap with n
  Widget get gW => SizedBox(width: toDouble());

  /// Vertical gap with n
  Widget get gH => SizedBox(height: toDouble());
}
