import 'package:flutter/material.dart'; 
import 'package:neuro_dashboard/core/utils/widgets/neuro_text.dart';

class NeuroTextButton extends StatelessWidget {
  final String text;
  final Color? color;
  final void Function() onTap;
  const NeuroTextButton({
    super.key,
    required this.text,
    this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: NeuroText(
        text: text,
        color: color,
      ),
    );
  }
}
