// import material and syncfusion_flutter_charts
import 'package:flutter/material.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class BarChartWidget extends StatelessWidget {
  final List data;
  const BarChartWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SfCartesianChart(
        title: ChartTitle(
            text:
                '${S.current.expensesByCategory} ${DateTime.now().appFormatMMM}',
            textStyle:
                context.theme.textTheme.bodyLarge?.copyWith(fontSize: 15)),
        legend: const Legend(isVisible: true),
        tooltipBehavior: TooltipBehavior(
            enable: true,
            color: Colors.blue,
            textStyle: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 15, color: Colors.white)),
        zoomPanBehavior:
            ZoomPanBehavior(zoomMode: ZoomMode.x, enablePanning: true),
        primaryXAxis: CategoryAxis(
          isVisible: true,
          majorGridLines: const MajorGridLines(width: 0),
          labelIntersectAction: AxisLabelIntersectAction.rotate45,
          labelStyle: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 10),
        ),
        primaryYAxis: NumericAxis(
          title: const AxisTitle(),
          numberFormat:
              NumberFormat.simpleCurrency(locale: 'en', decimalDigits: 0),
        ),
        series: [
          BarSeries(
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
              borderColor: Color.fromARGB(0, 0, 0, 0),
              color: Colors.black,
            ),
            dataLabelSettings: DataLabelSettings(
                isVisible: false,
                labelAlignment: ChartDataLabelAlignment.top,
                alignment: ChartAlignment.center,
                offset: const Offset(0, 30),
                useSeriesColor: true,
                textStyle: context.theme.textTheme.bodyLarge
                    ?.copyWith(fontSize: 9, color: Colors.white)),
            color: const Color(0xff6934D3),
            name: S.current.categoryName,
          ),
        ],
      ),
    );
  }
}
