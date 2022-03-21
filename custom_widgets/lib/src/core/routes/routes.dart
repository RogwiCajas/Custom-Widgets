import 'package:custom_widgets/src/app/modules/home.dart';
import 'package:custom_widgets/src/app/modules/onboarding/onboardingpage.dart';
import 'package:custom_widgets/src/app/modules/samples.dart';
import 'package:get/get.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
    ),
    GetPage(
      name: '/onboarding',
      page: () => const OnBoardingScreen(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: '/samples',
      page: () => const SamplesPage(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
