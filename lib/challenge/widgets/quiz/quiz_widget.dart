import 'package:flutter/material.dart';

import 'package:nlw5/challenge/widgets/awnser/awnser_widget.dart';
import 'package:nlw5/core/app_text_styles.dart';
import 'package:nlw5/shared/models/awnser_model.dart';
import 'package:nlw5/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final VoidCallback onChange;

  QuizWidget({
    Key? key,
    required this.question,
    required this.onChange,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;
  AwnserModel awnser(int index) => widget.question.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            widget.question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          for (var i = 0; i < widget.question.awnsers.length; i++)
            AwnserWidget(
              awnser: awnser(i),
              disabled: indexSelected != -1,
              isSelected: indexSelected == i,
              onTap: () {
                indexSelected = i;

                setState(() {});
                Future.delayed(
                  Duration(seconds: 1),
                ).then((value) => widget.onChange());
              },
            ),
        ],
      ),
    );
  }
}
