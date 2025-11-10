import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class MatchReportScreen extends StatelessWidget {
   MatchReportScreen({super.key});

  final List<Map<String, dynamic>> playerData = [
    {"name": "Rob", "score1": 1, "score2": 5},
    {"name": "Alice", "score1": 3, "score2": 7},
    {"name": "John", "score1": 2, "score2": 4},
    {"name": "Emma", "score1": 6, "score2": 8},
    {"name": "Leo", "score1": 0, "score2": 9},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Match report",
      ),
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            Row(
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
            LineChartSample2(),
            Padding(
              padding: AppSizes.VERTICAL,
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
                    text: "Recent Matches",
                    size: 15,
                    weight: FontWeight.w500,
                    color: kQuaternaryColor,
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: playerData.length,
              shrinkWrap: true,
              padding: AppSizes.HORIZONTAL,
              itemBuilder: (context, index) {
                final player = playerData[index];
              return Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    MyText(
                      text: player["name"],
                      size: 14,
                      weight: FontWeight.w400,
                      color: kQuaternaryColor,
                      fontFamily: AppFonts.audioWide,
                    )  ,
                    Spacer(),
                    MyText(
                      text: player["score1"].toString(),
                      size: 14,
                      weight: FontWeight.w400,
                      color: kQuaternaryColor,
                      fontFamily: AppFonts.montez,
                    ),
                    SizedBox(width: 30,),
                    MyText(
                      text: '-',
                      size: 14,
                      weight: FontWeight.w400,
                      color: kQuaternaryColor,
                    ),
                    SizedBox(width: 30,),
                    MyText(
                      text: player["score2"].toString(),
                      size: 14,
                      weight: FontWeight.w400,
                      color: kQuaternaryColor,
                      fontFamily: AppFonts.montez,
                    ),
                  ],
                ),
              );
            },
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: MyButton(onTap: (){}, buttonText: "Export")),
                SizedBox(width: 10,),
                Expanded(
                  child: MyButton(
                      backgroundColor: Color(0xFFE5CA9F),
                      borderColor: Color(0xFFD0A254),
                      onTap: (){}, buttonText: "Share"),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}










class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    Colors.greenAccent,
    Colors.blueGrey,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.1,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 24,
              bottom: 12,
            ),
            child: LineChart(
              showAvg ? avgData() : mainData(),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: Colors.white,
    );
    String text = switch (value.toInt()) {
      0 => '10',
      2 => '20',
      4 => '30',
      6 => '40',
      8 => '50',
      10 => '60',
      12 => '70',

      _ => '',
    };
    return SideTitleWidget(
      meta: meta,
      child: Text(text, style: style),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      backgroundColor: Colors.transparent,
      gridData: FlGridData(show: false),// ✅ remove background
      titlesData: FlTitlesData(
        show: true,
        leftTitles: const AxisTitles( // ✅ hide Y-axis
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withValues(alpha: 0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      backgroundColor: Colors.transparent,
      gridData: FlGridData(show: false),// ✅ remove background
      lineTouchData: const LineTouchData(enabled: false),
      titlesData: FlTitlesData(
        show: true,
        leftTitles: const AxisTitles( // ✅ hide Y-axis
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withValues(alpha: 0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withValues(alpha: 0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
