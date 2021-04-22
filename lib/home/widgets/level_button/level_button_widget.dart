import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nlw5/core/app_colors.dart';

class LevelButtonWidget extends StatelessWidget {
  final String? label;
  LevelButtonWidget({@required this.label})
      : assert(['Fácil', 'Médio', 'Difícil', 'Perito'].contains(label));

  final config = {
    'Fácil': {
      'color': AppColors.levelButtonFacil,
      'fontColor': AppColors.levelButtonTextFacil,
      'borderColor': AppColors.levelButtonBorderFacil
    },
    'Médio': {
      'color': AppColors.levelButtonMedio,
      'fontColor': AppColors.levelButtonTextMedio,
      'borderColor': AppColors.levelButtonBorderMedio
    },
    'Difícil': {
      'color': AppColors.levelButtonDificil,
      'fontColor': AppColors.levelButtonTextDificil,
      'borderColor': AppColors.levelButtonBorderDificil
    },
    'Perito': {
      'color': AppColors.levelButtonPerito,
      'fontColor': AppColors.levelButtonTextPerito,
      'borderColor': AppColors.levelButtonBorderPerito
    },
  };

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get fontColor => config[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.fromBorderSide(
          BorderSide(
            color: borderColor,
          ),
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 6.0),
        child: Text(
          '$label',
          style: GoogleFonts.notoSans(color: fontColor, fontSize: 13),
        ),
      ),
    );
  }
}
