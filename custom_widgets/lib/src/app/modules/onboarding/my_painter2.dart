import 'package:flutter/material.dart';

class MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Colores
    Color primario = const Color.fromARGB(255, 33, 123, 248);
    Color secundario = const Color.fromARGB(255, 50, 135, 253);
    Color terciario = const Color.fromARGB(255, 73, 147, 251);

    //SUPERIOR

    final lapiz = Paint()..strokeCap = StrokeCap.round;
    lapiz.color = primario;
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
    canvas.drawPath(path, lapiz);

    final lapiz5 = Paint()..strokeCap = StrokeCap.round;
    lapiz5.color = secundario; //Colors.yellow; //Color(0xff006bff);
    lapiz5.style = PaintingStyle.fill; //.fill rellenar
    lapiz5.strokeWidth = 3;
    final path5 = Path();
    path5.moveTo(size.width * 0.40, 0);
    path5.quadraticBezierTo(
      size.width * 0.4,
      size.height * 0.10,
      size.width * 0.7,
      size.height * 0.10,
    );
    path5.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.10,
      size.width * 1.0,
      size.height * 0.10,
    );
    path5.lineTo(size.width, 0);
    path5.close();
    canvas.drawPath(path5, lapiz5);

    final lapiz6 = Paint()..strokeCap = StrokeCap.round;
    lapiz6.color = terciario;
    lapiz6.style = PaintingStyle.fill; //.fill rellenar
    lapiz6.strokeWidth = 1;
    final path6 = Path();
    path6.moveTo(size.width * 0.60, 0);
    path6.quadraticBezierTo(
      size.width * 0.6,
      size.height * 0.07,
      size.width * 0.8,
      size.height * 0.07,
    );
    path6.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.07,
      size.width * 1.0,
      size.height * 0.07,
    );
    path6.lineTo(size.width, 0);
    path6.close();
    canvas.drawPath(path6, lapiz6);

    //iNFERIOR-------------------------------------------------------------
    final lapiz2 = Paint()..strokeCap = StrokeCap.round;
    lapiz2.color = primario;
    lapiz2.style = PaintingStyle.fill;
    lapiz2.strokeWidth = 4;
    final path2 = Path();
    path2.moveTo(size.width * 0, size.height * 0.93);
    path2.lineTo(size.width * 1.0, size.height * 1.0);
    path2.lineTo(size.width * 0, size.height * 1.0);
    canvas.drawPath(path2, lapiz2);

    final lapiz3 = Paint()..strokeCap = StrokeCap.round;
    lapiz3.color = secundario;
    lapiz3.style = PaintingStyle.fill;
    lapiz3.strokeWidth = 4;
    final path3 = Path();
    path3.moveTo(size.width * 0, size.height * 0.96);
    path3.lineTo(size.width * 0.82, size.height * 1);
    path3.lineTo(size.width * 0, size.height * 1.0);
    canvas.drawPath(path3, lapiz3);

    final lapiz4 = Paint()..strokeCap = StrokeCap.round;
    lapiz4.color = terciario;
    lapiz4.style = PaintingStyle.fill;
    lapiz4.strokeWidth = 4;
    final path4 = Path();
    path4.moveTo(size.width * 0, size.height * 0.98);
    path4.lineTo(size.width * 0.62, size.height * 1);
    path4.lineTo(size.width * 0, size.height * 1.0);
    canvas.drawPath(path4, lapiz4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
