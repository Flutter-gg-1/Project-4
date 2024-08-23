import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shop_app/signin_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const SigninScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.white);

    const pageDecoration = PageDecoration(
      fullScreen: true,
      imageFlex: 2,
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontFamily: "DMSherifText",
          fontWeight: FontWeight.w700,
          color: Colors.white),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xff9baa99),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: const Color(0xff9baa99),
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      safeAreaList: const [true, true, true, true],

      pages: [
        PageViewModel(
            title: "Welcome to Classy Step",
            body: "The perfect place to choose your footwaer.",
            decoration: pageDecoration,
            image: Padding(
              padding: const EdgeInsets.only(
                top: 60,
              ),
              child: Animate(
                effects: const [
                  FadeEffect(duration: Duration(seconds: 1)),
                ],
                child: Image.asset(
                  "assets/onBordingImg1.png",
                ),
              ),
            )),
        PageViewModel(
            title: "Your type ",
            body: "All kind of footwear from sneakers to high heels.",
            decoration: pageDecoration,
            image: Padding(
              padding: const EdgeInsets.only(
                top: 80,
              ),
              child: Image.asset(
                "assets/onBordingImg2.png",
              ),
            )),
        PageViewModel(
            title: "Get started now!",
            body: "Get your account and start shoping in one step",
            decoration: const PageDecoration(
              fullScreen: true,
              bodyFlex: 2,
              titleTextStyle: TextStyle(
                  fontSize: 30,
                  fontFamily: "DMSherifText",
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              bodyTextStyle: bodyStyle,
              bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            ))
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,

      skip: const Text('Skip',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: const Text('Done',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.white,
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
