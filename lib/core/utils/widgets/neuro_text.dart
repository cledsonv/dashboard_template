import 'package:flutter/material.dart';

enum NeuroTypography {
  title(true, 20),
  button(true, 14),
  body(false, 14);

  final bool isBold;
  final double size;
  const NeuroTypography(this.isBold, this.size);
}

class NeuroText extends StatelessWidget {
  final String text;
  final NeuroTypography typography;
  final double? fontSize;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final double? wordSpacing;
  const NeuroText({
    super.key,
    required this.text,
    this.typography = NeuroTypography.body,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.fontSize,
    this.letterSpacing,
    this.wordSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: color ?? Theme.of(context).colorScheme.onPrimary,
            fontSize: fontSize ?? typography.size,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            fontWeight: typography.isBold ? FontWeight.w600 : FontWeight.normal,
          ),
    );
  }
}
