import 'package:flutter/material.dart';

import 'package:nlw5/core/app_colors.dart';
import 'package:nlw5/core/app_text_styles.dart';
import 'package:nlw5/shared/models/awnser_model.dart';

// ignore: must_be_immutable
class AwnserWidget extends StatelessWidget {
  final AwnserModel awnser;
  final bool isSelected;
  final bool disabled;
  final VoidCallback onTap;

  const AwnserWidget({
    Key? key,
    required this.awnser,
    this.isSelected = false,
    required this.disabled,
    required this.onTap,
  }) : super(key: key);

  Color get _selectedColorRight =>
      awnser.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      awnser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      awnser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      awnser.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      awnser.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => awnser.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: IgnorePointer(
        ignoring: disabled,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected ? _selectedColorCardRight : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(
                BorderSide(
                  color:
                      isSelected ? _selectedBorderCardRight : AppColors.border,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    awnser.title,
                    style: isSelected
                        ? _selectedTextStyleRight
                        : AppTextStyles.body,
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: isSelected ? _selectedColorRight : AppColors.white,
                    borderRadius: BorderRadius.circular(500),
                    border: Border.fromBorderSide(
                      BorderSide(
                          color: isSelected
                              ? _selectedBorderRight
                              : AppColors.border),
                    ),
                  ),
                  child: isSelected
                      ? Icon(
                          _selectedIconRight,
                          size: 16,
                          color: Colors.white,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
