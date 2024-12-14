import 'package:auto_route/auto_route.dart';
import 'package:pretty_charts_example/core/config/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HeatmapPlotScreen extends StatelessWidget {
  const HeatmapPlotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Heatmap plots"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Basic heatmap plot"),
            subtitle: const Text(""),
            onTap: () {
              context.pushRoute(const BasicHeatmapPlotRoute());
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
