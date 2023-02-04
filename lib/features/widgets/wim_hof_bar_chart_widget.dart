import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../models/breathwork.dart';

class WimHofBarChartWidget extends ConsumerWidget {
  const WimHofBarChartWidget({super.key, required this.breathwork});

  final Breathwork breathwork;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int max = 0;
    for (final seconds in breathwork.holdSecondsPerRound!) {
      if (seconds > max) {
        max = seconds;
      }
    }

    return BarChart(BarChartData(
      barTouchData: barTouchData(context),
      titlesData: titlesData(context, breathwork),
      borderData: borderData,
      barGroups: barGroups(context, breathwork),
      gridData: FlGridData(show: false),
      alignment: BarChartAlignment.spaceEvenly,
      maxY: max.toDouble() + 30,
    ));
  }

  BarTouchData barTouchData(BuildContext context) => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            final elapsed = rod.toY.round();
            final minutes = elapsed / 60 > 0 ? elapsed ~/ 60 : 0;
            final seconds = minutes == 0 ? elapsed : elapsed - minutes * 60;
            final secondsText = seconds < 10 ? '0$seconds' : '$seconds';

            return BarTooltipItem(
              '$minutes:$secondsText',
              TextStyle(
                color: Theme.of(context).colorScheme.primary,
                // fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Rd 1';
        break;
      case 1:
        text = 'Rd 2';
        break;
      case 2:
        text = 'Rd 3';
        break;
      case 3:
        text = 'Rd 4';
        break;
      case 4:
        text = 'Rd 5';
        break;
      case 5:
        text = 'Rd 6';
        break;
      case 6:
        text = 'Rd 7';
        break;
      case 7:
        text = 'Rd 8';
        break;
      case 8:
        text = 'Rd 9';
        break;
      case 9:
        text = 'Rd 10';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text),
    );
  }

  FlTitlesData titlesData(BuildContext context, Breathwork breathwork) {
    return FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 24,
          getTitlesWidget: getTitles,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
    );
  }

  FlBorderData get borderData => FlBorderData(show: false);

  LinearGradient _barsGradient(BuildContext context) => LinearGradient(
        colors: [
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.secondary,
          Theme.of(context).colorScheme.tertiary,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );

  List<BarChartGroupData> barGroups(
      BuildContext context, Breathwork breathwork) {
    List<BarChartGroupData> groups = [];

    int index = 0;
    for (final seconds in breathwork.holdSecondsPerRound!) {
      final group = BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: seconds.toDouble(),
            width: 20,
            gradient: _barsGradient(context),
          )
        ],
        showingTooltipIndicators: [0],
      );

      groups.add(group);

      index++;
    }

    return groups;
  }
}
