import 'package:flutter/material.dart';

class RoundedRectangleTabIndicator extends Decoration {
  final BoxPainter _painter;
  RoundedRectangleTabIndicator({
    required Color color,
    required double weight,
    required double width,
    required padding,
  }) : _painter = _RRectanglePainterColor(color, weight, width, padding);
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _RRectanglePainterColor extends BoxPainter {
  final Paint _paint;
  final double weight;
  final double width;
  final double padding;

  _RRectanglePainterColor(Color color, this.weight, this.width, this.padding)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset customOffset = offset +
        Offset(cfg.size!.width / 2 - (width * 0.5) - padding,
            cfg.size!.height - weight);

    Rect myRect = customOffset & Size(width, weight);
    RRect myRRect = RRect.fromRectXY(myRect, weight, weight);

    canvas.drawRRect(myRRect, _paint);
  }
}
