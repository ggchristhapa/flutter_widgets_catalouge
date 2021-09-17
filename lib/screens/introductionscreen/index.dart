import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/screens/home/index.dart';

class IntroductinScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 17.0);

    final introKey = GlobalKey<IntroductionScreenState>();

    void _onIntroEnd(context) async {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    }

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      imagePadding: EdgeInsets.zero,
      bodyFlex: 2,
      imageFlex: 3,
    );

    const dotsDecorator2 = const DotsDecorator(
      size: Size(10.0, 10.0),
      color: Color(0xFFBDBDBD),
      activeSize: Size(22.0, 10.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );

    const shapeDecoration = const ShapeDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );

    var myOnbardingPages = newMethod(pageDecoration, bodyStyle);
    return Scaffold(
      appBar: appBarWidget(title: 'Intro Screen'),
      body: IntroductionScreen(
        key: introKey,
        pages: myOnbardingPages,
        onDone: () => _onIntroEnd(context),
        showSkipButton: true,
        skipFlex: 0,
        nextFlex: 0,
        skip: const Text('Skip'),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Continue',
            style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: dotsDecorator2,
        dotsContainerDecorator: shapeDecoration,
      ),
    );
  }

  List<PageViewModel> newMethod(
      PageDecoration pageDecoration, TextStyle bodyStyle) {
    return [
      PageViewModel(
        title: 'Join fight against COVID-19',
        image: Lottie.asset(
          'assets/login.json',
          height: 250,
          width: 250,
        ),
        bodyWidget: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Joint force form Connecting Healthy Helping Hands Infected',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'Contribute and help people in your area Discover the best ways from authentic sources',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: 'Live Tracking',
        image: Lottie.asset(
          'assets/signup.json',
          height: 250,
          width: 250,
        ),
        bodyWidget: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sharing Your Location helps us. Share Stats of your area Helps us to navigate you when you need help',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'Contribute and help people in your area Discover the best ways  from authentic sources',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        decoration: PageDecoration(
          titleTextStyle:
              TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
          bodyTextStyle: bodyStyle,
          imagePadding: EdgeInsets.zero,
          bodyFlex: 2,
          imageFlex: 3,
        ),
      ),
    ];
  }

  PageViewModel pageViewModal(PageDecoration pageDecoration,
      {title, body, image}) {
    return PageViewModel(
      title: title,
      body: body,
      image: Image.asset(image),
      decoration: pageDecoration,
    );
  }
}
