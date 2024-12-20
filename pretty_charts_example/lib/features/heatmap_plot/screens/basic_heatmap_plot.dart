
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pretty_charts/pretty_charts.dart';

@RoutePage()
class BasicHeatmapPlotScreen extends StatelessWidget {
  const BasicHeatmapPlotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 600,
          width: 600,
          child: HeatmapPlot(
            axes: CartesianAxes(
              xLimits: AxesLimit(-30, 50),
              yLimits: AxesLimit(0, 15),
              numberOfTicksOnX: 5,
              numberOfTicksOnY: 5,
            ),
            data: [
              HeatmapPlotData(
                x: [-22.5, -17.5, -12.5, -7.5, -2.5, 2.5, 7.5, 12.5, 17.5, -15, -10, -5, 0, 5, 10, -7.5, -2.5, 2.5],
                y: [5, 5, 5, 5, 5, 5, 5, 5, 5, 10, 10, 10, 10, 10, 10, 15, 15, 15],
                name: "One",
              ),
              // HeatmapPlotData(
              //   x: [3.2, 1.8, 4.5, 2.3, 6.7, 5.1, 8.9, 7.2, 9.4, 0.6],
              //   y: [7.8, 2.5, 3.3, 4.1, 6.2, 8.5, 9.7, 2.1, 1.9, 8.3],
              //   name: "Two",
              // ),
              // HeatmapPlotData(
              //   x: [1.1, 2.7, 3.8, 5.6, 7.4, 9.2, 0.9, 4.3, 6.8, 8.0],
              //   y: [9.6, 6.4, 3.7, 1.8, 5.2, 7.9, 2.4, 4.9, 8.1, 0.5],
              //   name: "Three",
              // ),
              // HeatmapPlotData(
              //   x: [0.4, 1.9, 3.5, 4.8, 6.1, 8.2, 9.7, 2.6, 7.0, 5.3],
              //   y: [6.7, 2.3, 3.9, 5.4, 8.7, 1.2, 9.1, 4.5, 7.8, 0.8],
              //   name: "Four",
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
