import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gusto_neumorphic/gusto_neumorphic.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_text.dart'; 

class NeuroButton extends StatelessWidget {
  ///Texto do Botão
  final String label;

  ///Cor do texto do botão
  final Color? labelColor;

  ///Cor de fundo do botão
  final Color? backgroundColor;

  ///Se o botão vai ter borda
  final bool border;

  ///O que o botão ira fazer ao pressionar
  final void Function() onPressed;

  ///Margem do botão
  final EdgeInsetsGeometry? margin;

  ///Cor da borda
  final Color? bordeColor;

  ///Largura
  final double? width;

  const NeuroButton({
    super.key,
    required this.label,
    this.labelColor,
    this.backgroundColor,
    required this.onPressed,
    this.margin,
    this.width,
  })  : border = false,
        bordeColor = Colors.transparent;

  const NeuroButton.outline({
    super.key,
    required this.label,
    this.labelColor,
    this.backgroundColor = Colors.transparent,
    required this.onPressed,
    this.margin,
    this.bordeColor,
    this.width,
  }) : border = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(0),
      child: SizedBox(
        height: 50,
        width: width,
        child: NeumorphicButton(
          onPressed: onPressed,
          style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              intensity: 0.8,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
              depth: 1,
              shadowDarkColor: Theme.of(context).colorScheme.onPrimary,
              color: backgroundColor ?? Theme.of(context).colorScheme.primary,
              lightSource: LightSource.topLeft),
          child: NeuroText(
            text: label,
            textAlign: TextAlign.center,
            typography: NeuroTypography.button,
            color: labelColor ?? Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );

    // GestureDetector(
    //   onTap: onPressed,
    //   child: Container(
    //     height: 50,
    //     margin: margin,
    //     padding: const EdgeInsets.symmetric(horizontal: 16),
    //     alignment: Alignment.center,
    //     decoration: BoxDecoration(
    //       color: backgroundColor ?? kPrimary,
    //       borderRadius: BorderRadius.circular(5),
    //       border: border
    //           ? Border.all(
    //               width: 1,
    //               color: bordeColor ?? kOnPrimary,
    //             )
    //           : const Border(),
    //     ),
    //     child: NeuroText(
    //       text: label,
    //       typography: NeuroTypography.button,
    //       color: labelColor,
    //     ),
    //   ),
  }
}
