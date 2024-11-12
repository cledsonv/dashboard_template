import 'package:flutter/material.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_text.dart';

class NeuroTextSpan extends TextSpan {
  final NeuroTypography typography;
  final Color? color;

  const NeuroTextSpan(
      {this.typography = NeuroTypography.body,
      this.color,
      super.text,
      super.children});
  @override
  TextStyle? get style => const TextStyle().copyWith(
        color: color ?? Colors.black,
        fontSize: typography.size,
        fontWeight: typography.isBold ? FontWeight.bold : FontWeight.normal,
      );
}
