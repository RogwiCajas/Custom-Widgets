import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint()..strokeCap = StrokeCap.round;

    lapiz.color = const Color.fromARGB(255, 33, 123, 248);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 4;

    final path = Path();

    path.moveTo(size.width * 0.25, 0);
    path.quadraticBezierTo(
      size.width * 0.3,
      size.height * 0.14,
      size.width * 0.7,
      size.height * 0.14,
    );
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.14,
      size.width * 1.0,
      size.height * 0.14,
    );

    path.lineTo(size.width, 0);
    //path.lineTo(size.width * 0.25, 0);
    canvas.drawPath(path, lapiz);

    final lapiz2 = Paint()..strokeCap = StrokeCap.round;

    lapiz2.color = const Color.fromARGB(255, 33, 123, 248);
    lapiz2.style = PaintingStyle.fill;
    lapiz2.strokeWidth = 4;

    final path2 = Path();

    path2.moveTo(size.width * 0, size.height * 0.95);
    path2.lineTo(size.width * 1.0, size.height * 1.0);
    path2.lineTo(size.width * 0, size.height * 1.0);
    //path.lineTo(size.width * 0.25, 0);
    canvas.drawPath(path2, lapiz2);

    final lapiz5 = Paint()..strokeCap = StrokeCap.round;

    // Propiedades
    lapiz5.color = const Color.fromARGB(
        255, 248, 248, 248); //Colors.yellow; //Color(0xff006bff);
    lapiz5.style = PaintingStyle.fill; //.fill rellenar
    lapiz5.strokeWidth = 3;

    final path5 = Path();
    path5.moveTo(size.width * 0.52, size.height * 0.05);
    path5.cubicTo(
      size.width * 0.64,
      size.height * 0.02,
      size.width * 0.7,
      size.height * 0.08,
      size.width * 0.68,
      size.height * 0.10,
    );
    path5.cubicTo(
      size.width * 0.68,
      size.height * 0.10,
      size.width * 0.50,
      size.height * 0.15,
      size.width * 0.52,
      size.height * 0.05,
    );

    path5.close();
    canvas.drawPath(path5, lapiz5);

    final lapiz6 = Paint()..strokeCap = StrokeCap.round;

    // Propiedades
    lapiz6.color = const Color.fromARGB(255, 248, 248, 248);
    //Colors.yellow; //Color(0xff006bff);
    lapiz6.style = PaintingStyle.fill; //.fill rellenar
    lapiz6.strokeWidth = 1;

    final path6 = Path();
    path6.moveTo(size.width * 0.90, size.height * 0.07);
    path6.cubicTo(
      size.width * 0.91,
      size.height * 0.05,
      size.width * 0.95,
      size.height * 0.05,
      size.width * 0.96,
      size.height * 0.07,
    );
    path6.cubicTo(
      size.width * 0.96,
      size.height * 0.10,
      size.width * 0.90,
      size.height * 0.08,
      size.width * 0.90,
      size.height * 0.07,
    );

    path6.close();
    canvas.drawPath(path6, lapiz6);

    final lapiz7 = Paint()..strokeCap = StrokeCap.round;

    // Propiedades
    lapiz7.color = const Color.fromARGB(255, 248, 248, 248);
    //Colors.yellow; //Color(0xff006bff);
    lapiz7.style = PaintingStyle.fill; //.fill rellenar
    lapiz7.strokeWidth = 1;
    final path7 = Path();
    path7.moveTo(size.width * 0.10, size.height * 1);
    path7.cubicTo(
      size.width * 0.11,
      size.height * 0.96,
      size.width * 0.15,
      size.height * 0.96,
      size.width * 0.18,
      size.height * 1,
    );
    path7.cubicTo(
      size.width * 0.18,
      size.height * 1.0,
      size.width * 0.25,
      size.height * 1,
      size.width * 0.10,
      size.height * 1,
    );

    path7.close();
    canvas.drawPath(path7, lapiz7);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
