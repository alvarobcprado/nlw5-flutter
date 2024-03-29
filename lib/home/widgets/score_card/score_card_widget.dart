import 'package:flutter/material.dart';

import 'package:nlw5/core/app_colors.dart';
import 'package:nlw5/core/app_text_styles.dart';
import 'package:nlw5/home/widgets/chart/chart_widget.dart';

class ScoreCardWidget extends StatelessWidget {
  final int userScore;

  const ScoreCardWidget({
    Key? key,
    required this.userScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: 136,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.border),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ChartWidget(
                  value: userScore,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vamos começar',
                        style: AppTextStyles.heading,
                      ),
                      Text(
                        'Complete os desafios e avance em conhecimento',
                        style: AppTextStyles.body,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
