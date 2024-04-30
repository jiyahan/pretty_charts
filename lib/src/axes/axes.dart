class AxesLimit {
  final double minLimit;
  final double maxLimit;

  AxesLimit(this.minLimit, this.maxLimit);

  double getDiff() {
    return maxLimit - minLimit;
  }
}

class Axes {
  final AxesLimit xLimits;
  final AxesLimit yLimits;

  final int numberOfTicksOnX;
  final int numberOfTicksOnY;

  /// legend to write on the plot
  final String? legend;
  final bool showGrid;

  Axes({
    required this.xLimits,
    required this.yLimits,
    required this.numberOfTicksOnX,
    required this.numberOfTicksOnY,
    this.legend,
    this.showGrid = false,
  });
}
