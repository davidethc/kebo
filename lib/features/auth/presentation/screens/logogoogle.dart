import 'package:flutter/material.dart';

class GoogleLogo extends StatelessWidget {
  final double size;

  const GoogleLogo({Key? key, this.size = 24}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _GoogleLogoPainter(),
      ),
    );
  }
}

class _GoogleLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..style = PaintingStyle.fill;

    // Azul
    paint.color = const Color(0xFF4285F4);
    canvas.drawPath(
      Path()
        ..moveTo(size.width * 0.75, size.height * 0.5)
        ..lineTo(size.width * 0.8, size.height * 0.5)
        ..arcTo(
            Rect.fromLTWH(size.width * 0.5, size.height * 0.2, size.width * 0.6,
                size.height * 0.6),
            -0.5 * 3.14,
            3.14,
            false)
        ..lineTo(size.width * 0.75, size.height * 0.9)
        ..close(),
      paint,
    );

    // Rojo
    paint.color = const Color(0xFFEA4335);
    canvas.drawPath(
      Path()
        ..moveTo(size.width * 0.25, size.height * 0.3)
        ..lineTo(size.width * 0.5, size.height * 0.5)
        ..lineTo(size.width * 0.25, size.height * 0.7)
        ..arcTo(
            Rect.fromLTWH(size.width * 0.1, size.height * 0.1, size.width * 0.8,
                size.height * 0.8),
            0.7 * 3.14,
            -1.4 * 3.14,
            false)
        ..close(),
      paint,
    );

    // Amarillo
    paint.color = const Color(0xFFFBBC05);
    canvas.drawPath(
      Path()
        ..moveTo(size.width * 0.25, size.height * 0.7)
        ..lineTo(size.width * 0.5, size.height * 0.5)
        ..lineTo(size.width * 0.25, size.height * 0.3)
        ..arcTo(
            Rect.fromLTWH(size.width * 0.1, size.height * 0.1, size.width * 0.8,
                size.height * 0.8),
            -0.7 * 3.14,
            1.4 * 3.14,
            false)
        ..close(),
      paint,
    );

    // Verde
    paint.color = const Color(0xFF34A853);
    canvas.drawPath(
      Path()
        ..moveTo(size.width * 0.25, size.height * 0.5)
        ..lineTo(size.width * 0.5, size.height * 0.5)
        ..arcTo(
            Rect.fromLTWH(size.width * 0.1, size.height * 0.2, size.width * 0.6,
                size.height * 0.6),
            -0.5 * 3.14,
            3.14,
            false)
        ..lineTo(size.width * 0.25, size.height * 0.9)
        ..close(),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
