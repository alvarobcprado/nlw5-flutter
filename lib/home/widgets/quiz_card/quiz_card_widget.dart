import 'package:flutter/material.dart';
import 'package:nlw5/core/app_colors.dart';
import 'package:nlw5/core/app_images.dart';
import 'package:nlw5/core/app_text_styles.dart';
import 'package:nlw5/shared/widgets/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 15),
          Text(
            'Gerenciamento de Estado',
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  '3 de 10',
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 4,
                child: ProgressIndicatorWidget(value: 0.3),
              ),
            ],
          )
        ],
      ),
    );
  }
}
