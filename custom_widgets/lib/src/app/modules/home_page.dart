import 'package:custom_widgets/src/data/models/slider_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  //animation
  late AnimationController animationController;
  //

  List<SliderModel> slides = <SliderModel>[];
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
    slides = getSlides();
    animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: slides.length,
                itemBuilder: (context, index) {
                  // contents of slider
                  return Slider(
                    image: slides[index].getImage(),
                    title: slides[index].getTitle(),
                    subtitle: slides[index].getSubtitle(),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              slides.length,
              (index) => buildDot(index, context),
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.all(40),
            width: 200,
            color: Colors.blue.shade500,
            child: ElevatedButton(
              child:
                  Text(currentIndex == slides.length - 1 ? "Continue" : "Next"),
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  // container created for dots
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black54,
      ),
    );
  }
}

// ignore: must_be_immutable
// slider declared
class Slider extends StatelessWidget {
  String image = '';
  String title = '';
  String subtitle = '';

  Slider(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // contains container
        Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // image given in slider
        Image(
          image: AssetImage(image),
          width: 250,
          height: 250,
        ),
        Container(
          margin: const EdgeInsets.all(10),
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

        const SizedBox(height: 25),
      ],
    );
  }
}
