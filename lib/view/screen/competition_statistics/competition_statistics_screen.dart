import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';



class CompetitionStatisticsScreen extends StatelessWidget {
  const CompetitionStatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: AppSizes.DEFAULT,
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: ShapeDecoration(
                  color: kTFBgColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      color: kTFBorderColor,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: MyText(
                    text: "TOURNAMENT/COMPETITION NAME",
                    size: 15,
                    weight: FontWeight.w500,
                    color: kQuaternaryColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: AppSizes.HORIZONTAL,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 91,
                    height: 34,
                    decoration: ShapeDecoration(
                      color: kYellowColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyText(
                          text: "Legs",
                          size: 10,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),
                        MyText(
                          text: "0",
                          size: 10,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),

                      ],
                    ),
                  ),
                  Container(
                    width: 91,
                    height: 34,
                    decoration: ShapeDecoration(
                      color: kTFBgColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyText(
                          text: "301",
                          size: 10,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),
                        MyText(
                          text: "Double in",
                          size: 10,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),

                      ],
                    ),
                  ),
                  Container(
                    width: 91,
                    height: 34,
                    decoration: ShapeDecoration(
                      color: kYellowColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyText(
                          text: "Legs",
                          size: 10,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),
                        MyText(
                          text: "1",
                          size: 10,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: AppSizes.DEFAULT,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: ShapeDecoration(
                        color: const Color(0x87D0A254),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            color: kTFBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Center(
                        child: MyText(
                          text: "201",
                          size: 27,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: ShapeDecoration(
                        color:  Colors.white.withValues(alpha: 0.44),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            color: kTFBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Center(
                        child: MyText(
                          text: "141",
                          size: 27,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: AppSizes.HORIZONTAL,
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyText(
                    text: "Andy",
                    size: 22,
                    weight: FontWeight.w500,
                    color: kQuaternaryColor,
                  ),
                  MyText(
                    text: "Rob",
                    size: 22,
                    weight: FontWeight.w500,
                    color: kQuaternaryColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: AppSizes.HORIZONTAL,
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    // Andy's scores (left side)
                    Expanded(
                      child: Column(
                        children: [
                          ScoreRow(scores: ['26', '276']),
                          ScoreRow(scores: ['26', '276']),

                        ],
                      ),
                    ),
                    // Middle column with numbers
                    Container(
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      child: Column(
                        children: const [
                          ScoreNumber(number: '3'),
                          ScoreNumber(number: '12', isHighlighted: true),
                          ScoreNumber(number: '15', isHighlighted: true),
                        ],
                      ),
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ScoreRow(scores: ['26', '276']),
                          ScoreRow(scores: ['26', '276']),

                        ],
                      ),
                    ),
                    // Scrollbar
                    Container(
                      width: 15,
                      margin: const EdgeInsets.only(left: 8,top: 10,bottom: 10),
                      child: Container(
                        decoration: ShapeDecoration(
                          color: const Color(0x569E875C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: kQuaternaryColor),
              child:  KeypadScreen(),
            )


          ],
        ),
      ),
    );
  }
}









class ScoreRow extends StatelessWidget {
  final List<String> scores;

  const ScoreRow({
    Key? key,
    required this.scores,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyText(
            text: scores[0],
            size: 14,
            weight: FontWeight.w400,
            color: kQuaternaryColor,
            fontFamily: AppFonts.montez,
          ),
           MyText(
            text: '-',
            size: 14,
            weight: FontWeight.w400,
            color: kQuaternaryColor,
          ),
          MyText(
           text:  scores[1],
            size: 14,
            weight: FontWeight.w400,
            color: kQuaternaryColor,
            fontFamily: AppFonts.montez,
          ),
        ],
      ),
    );
  }
}

class ScoreNumber extends StatelessWidget {
  final String number;
  final bool isHighlighted;

  const ScoreNumber({
    Key? key,
    required this.number,
    this.isHighlighted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: MyText(
          text: number,
          size: 18,
          weight: FontWeight.w500,
          color: kYellowColor,
        ),
      ),
    );
  }
}



class KeypadScreen extends StatefulWidget {
  const KeypadScreen({Key? key}) : super(key: key);

  @override
  State<KeypadScreen> createState() => _KeypadScreenState();
}

class _KeypadScreenState extends State<KeypadScreen> {
  String score = '201';

  void onNumberPressed(String number) {
    setState(() {
      score += number;
    });
  }

  void onBackPressed() {
    setState(() {
      if (score.isNotEmpty) {
        score = score.substring(0, score.length - 1);
      }
    });
  }

  void onClearPressed() {
    setState(() {
      score = '';
    });
  }

  void onUndoPressed() {
    // Implement undo functionality as needed
    print('Undo pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Grid with keypad and side buttons
          AspectRatio(
            aspectRatio: 1.1,
            child: Row(
              children: [
                // Left keypad section (numbers)
                Expanded(
                  flex: 2,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.8, // Makes buttons wider/shorter
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      final numbers = ['1', '6', '2', '7', '3', '8', '4', '9', '5', '0'];
                      return KeypadButton(
                        label: numbers[index],
                        onPressed: () {},
                      );
                    },
                  ),
                ),
                // Right side buttons
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: ScoreDisplay(score: score),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: ActionButton(
                                label: 'No score',
                                onPressed: onBackPressed,
                              ),
                            ),
                            Expanded(
                              child: ActionButton(
                                label: 'Game \nShot',
                                onPressed: () => print('Edit pressed'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: ActionButton(
                                label: 'Back',
                                onPressed: onBackPressed,
                              ),
                            ),
                            Expanded(
                              child: ActionButton(
                                label: 'Edit',
                                onPressed: () => print('Edit pressed'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: ActionButton(
                                icon: Icons.clear,
                                onPressed: onClearPressed,
                              ),
                            ),
                            Expanded(
                              child: ActionButton(
                                icon: Icons.undo,
                                onPressed: onUndoPressed,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KeypadButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const KeypadButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      child: Material(
        color: Colors.grey[700],
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ScoreDisplay extends StatelessWidget {
  final String score;

  const ScoreDisplay({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.brown[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          score.isEmpty ? 'No score' : score,
          style: TextStyle(
            fontSize: score.isEmpty ? 14 : 36,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final VoidCallback onPressed;

  const ActionButton({
    Key? key,
    this.label,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      child: Material(
        color: Colors.grey[700],
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: icon != null
                ? Icon(icon, color: Colors.white, size: 24)
                : Text(
              label ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                height: 1.2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}