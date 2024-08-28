import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class IncomeChartScreen extends StatelessWidget {
  final List data;
  const IncomeChartScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SfCartesianChart(
        title: ChartTitle(
            text: S.current.incomePerMonth,
            textStyle:
                context.theme.textTheme.bodyLarge?.copyWith(fontSize: 15)),
        legend: const Legend(isVisible: true),
        tooltipBehavior: TooltipBehavior(
            enable: true,
            color: const Color.fromARGB(206, 57, 210, 192),
            textStyle: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 15, color: Colors.white)),
        zoomPanBehavior:
            ZoomPanBehavior(zoomMode: ZoomMode.x, enablePanning: true),
        primaryXAxis: DateTimeAxis(
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          dateFormat: DateFormat.yMMM(),
          intervalType: DateTimeIntervalType.months,
          interval: 1,
          majorGridLines: const MajorGridLines(width: 0),
          title: AxisTitle(text: S.current.month),
          autoScrollingDelta: 6,
        ),
        primaryYAxis: NumericAxis(
          title: const AxisTitle(),
          majorGridLines: const MajorGridLines(width: 1),
          numberFormat:
              NumberFormat.simpleCurrency(locale: 'en', decimalDigits: 0),
        ),
        series: [
          SplineAreaSeries(
            opacity: 0.5,
            dataSource: data,
            xValueMapper: (data, index) => data[1],
            yValueMapper: (data, index) => data[2],
            markerSettings: const MarkerSettings(
              isVisible: true,
              width: 5,
              height: 5,
              shape: DataMarkerType.circle,
              borderWidth: 1,
              color: Color.fromARGB(108, 0, 0, 0),
            ),
            dataLabelSettings: DataLabelSettings(
                isVisible: false,
                labelAlignment: ChartDataLabelAlignment.outer,
                alignment: ChartAlignment.center,
                offset: const Offset(10, 0),
                useSeriesColor: true,
                textStyle:
                    context.theme.textTheme.bodyLarge?.copyWith(fontSize: 12)),
            color: const Color.fromARGB(21, 57, 210, 192),
            name: S.current.income,
          ),
        ],
      ),
    );
  }
}
