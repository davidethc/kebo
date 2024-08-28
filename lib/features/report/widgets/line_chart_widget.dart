// import material and syncfusion_flutter_charts
import 'package:flutter/material.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class LineChartWidget extends StatelessWidget {
  final List data;
  const LineChartWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SfCartesianChart(
        title: ChartTitle(
            text: S.current.expensesOverTime,
            textStyle:
                context.theme.textTheme.bodyLarge?.copyWith(fontSize: 15)),
        legend: const Legend(isVisible: true),
        tooltipBehavior: TooltipBehavior(
            enable: true,
            color: const Color.fromARGB(87, 155, 39, 176),
            textStyle: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 15, color: Colors.white)),
        zoomPanBehavior: ZoomPanBehavior(
          zoomMode: ZoomMode.x,
          enablePanning: true,
        ),
        primaryXAxis: DateTimeAxis(
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          dateFormat: DateFormat.yMMM(),
          intervalType: DateTimeIntervalType.days,
          interval: 1,
          majorGridLines: const MajorGridLines(width: 0),
          title: AxisTitle(text: S.current.dateChart),
          autoScrollingDelta: 15,
        ),
        primaryYAxis: NumericAxis(
          title: const AxisTitle(),
          maximum: 700000,
          majorGridLines: const MajorGridLines(width: 1),
          numberFormat:
              NumberFormat.simpleCurrency(locale: 'en', decimalDigits: 0),
        ),
        series: [
          SplineAreaSeries(
            opacity: 0.5,
            dataSource: data,
            xValueMapper: (data, index) => data[0],
            yValueMapper: (data, index) => data[2],
            markerSettings: const MarkerSettings(
              isVisible: false,
              width: 5,
              height: 5,
              shape: DataMarkerType.circle,
              borderWidth: 1,
              color: Color.fromARGB(68, 0, 0, 0),
            ),
            dataLabelSettings: DataLabelSettings(
                isVisible: false,
                labelAlignment: ChartDataLabelAlignment.outer,
                alignment: ChartAlignment.center,
                offset: Offset(10, 0),
                useSeriesColor: true,
                textStyle:
                    context.theme.textTheme.bodyLarge?.copyWith(fontSize: 12)),
            color: Colors.grey,
            name: S.current.lastXDay(30),
          ),
          SplineAreaSeries(
            opacity: 0.3,
            dataSource: data,
            xValueMapper: (data, index) => data[0],
            yValueMapper: (data, index) => data[1],
            markerSettings: const MarkerSettings(
              isVisible: true,
              width: 5,
              height: 5,
              shape: DataMarkerType.circle,
              borderWidth: 2,
              color: Color.fromARGB(68, 0, 0, 0),
            ),
            dataLabelSettings: DataLabelSettings(
                isVisible: false,
                labelAlignment: ChartDataLabelAlignment.top,
                alignment: ChartAlignment.center,
                offset: Offset(0, 30),
                useSeriesColor: true,
                textStyle: context.theme.textTheme.bodyLarge
                    ?.copyWith(fontSize: 9, color: Colors.white)),
            color: const Color(0x6934D3),
            name: S.current.actual,
          ),
        ],
      ),
    );
  }
}
