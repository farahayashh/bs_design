/*

import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';

List<Color> gradientColors = [primary];

LineChartData workoutProgressData() {
  return LineChartData(
    gridData: FlGridData(
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.transparent,
            strokeWidth: 0.1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0.1,
          );
        }
    ),

    borderData: FlBorderData(
      show: false,
    ),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 3),
          FlSpot(2.6, 2),
          FlSpot(4.9, 5),
          FlSpot(6.8, 3.1),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        colors: gradientColors,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, 1.5),
          FlSpot(2.5, 1),
          FlSpot(3, 5),
          FlSpot(5, 2),
          FlSpot(7, 4),
          FlSpot(8, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        colors: [thirdColor.withOpacity(0.5)],
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),
    ],
  );
}
*/

