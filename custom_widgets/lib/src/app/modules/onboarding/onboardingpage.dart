import 'dart:async';

import 'package:custom_widgets/src/data/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:custom_widgets/src/app/modules/onboarding/slider_item.dart';
import 'package:custom_widgets/src/app/modules/onboarding/my_painter2.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<OnBoardingScreen>
    with SingleTickerProviderStateMixin {
  //

  List<SliderModel> slides = <SliderModel>[];
  int currentIndex = 0;
  late Timer _timer;
  PageController _controller = PageController();

  //animation
  late AnimationController animationController;
  late Animation<double> animation;

  double begin = 0;
  double end = 2;

  @override
  void initState() {
    super.initState();

    _controller = PageController(initialPage: currentIndex);
    slides = getSlides();

    _timer = Timer.periodic(const Duration(milliseconds: 3500), (timer) {
      if (currentIndex < 2) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      _controller.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });

    /*
    animationController = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);

    animation = Tween<double>(begin: 0, end: 2).animate(animationController);
    //_setProgressAnim(0);*/
  }

  _setProgressAnim(int curPageIndex) {
    setState(() {
      animation = Tween<double>(
        begin: begin,
        end: end,
      ).animate(animationController);
      print(animation.value);
    });

    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: MyPainter2(),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                        print("value: ${value}");

                        //animationController.reset();
                        //_setProgressAnim(value);
                      });
                    },
                    itemCount: slides.length,
                    itemBuilder: (context, index) {
                      var _scale = currentIndex == index ? 1.0 : 0.0;
                      return TweenAnimationBuilder(
                        duration: const Duration(milliseconds: 500),
                        tween: Tween(begin: _scale, end: _scale),
                        curve: Curves.ease,
                        child: SliderCustom(
                          image: slides[index].getImage(),
                          title: slides[index].getTitle(),
                          subtitle: slides[index].getSubtitle(),
                          //animation: animation,
                        ),
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: value as double,
                            child: child,
                          );
                        },
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
                color: Color.fromARGB(255, 255, 255, 255),
                child: ElevatedButton(
                  child: Text(
                      currentIndex == slides.length - 1 ? "Continue" : "Next"),
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  // container migrar a widget
  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
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
