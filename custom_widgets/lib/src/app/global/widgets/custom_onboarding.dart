import 'package:flutter/material.dart';

class CustomOnBoarding extends StatelessWidget {
  final String val;
  const CustomOnBoarding({Key? key, required this.val}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: const <Widget>[
        Center(
          child: Text(
            '1',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        Center(
          child: Text(
            '2',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        Center(
          child: Text(
            '3',
            style: TextStyle(color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
