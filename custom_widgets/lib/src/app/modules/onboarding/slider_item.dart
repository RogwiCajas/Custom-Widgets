import "package:flutter/material.dart";

// ignore: must_be_immutable
// slider declared
class SliderCustom extends StatelessWidget /*AnimatedWidget*/ {
  String image = '';
  String title = '';
  String subtitle = '';
  //late Animation<double> animation;

  SliderCustom({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    //required Animation<double> animation,
  }) : super(key: key /*listenable: animation*/);

  @override
  Widget build(BuildContext context) {
    //final Animation<double> animation = listenable as Animation<double>;
    return
        // contains container
        Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // image given in slider
        Image(
            image: AssetImage(image),
            width: 250, //animation.value,
            height: 250 //animation.value,
            ),
        Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 20.0,
                    leadingDistribution: TextLeadingDistribution.proportional),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        const SizedBox(height: 5),
      ],
    );
  }
}
