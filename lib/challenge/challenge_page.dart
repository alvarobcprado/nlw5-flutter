import 'package:flutter/material.dart';
import 'package:nlw5/challenge/widgets/quest_indicador/quest_indicator_widget.dart';
import 'package:nlw5/challenge/widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestIndicadtorWidget(),
        ),
      ),
      body: QuizWidget(title: 'Oque o Flutter faz em sua totalidade?'),
    );
  }
}
