import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';

///Class to hold data for itembuilder in Withbuilder app.
class ItemData {
  final Color color;
  final String image;
  final String text1;
  final String text2;
  final String text3;

  ItemData(this.color, this.image, this.text1, this.text2, this.text3);
}

List<ItemData> data = [
  ItemData(
      Colors.red.shade100, 'assets/marker.png', "Hi", "It's Me", "Sahdeep"),
  ItemData(Colors.red.shade300, 'assets/photo.jpg', "Take a", "Look At",
      "Liquid Swipe"),
  ItemData(Colors.red.shade400, 'assets/marker.png', "Liked?", "Fork!",
      "Give Star!"),
  ItemData(Colors.red.shade600, 'assets/marker.png', "Can be", "Used for",
      "Onboarding design"),
  ItemData(
      Colors.red.shade800, 'assets/marker.png', "Do", "try it", "Thank you"),
];

/// Example of LiquidSwipe with itemBuilder
class LiquidSwiperScreen extends StatefulWidget {
  @override
  _LiquidSwiperScreen createState() => _LiquidSwiperScreen();
}

class _LiquidSwiperScreen extends State<LiquidSwiperScreen> {
  int page = 0;
  LiquidController? liquidController;
  UpdateType? updateType;

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Liquid Swiper', centertitle: true),
      body: LiquidSwipe.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            color: data[index].color,
            width: double.infinity,
            child: liquidSwiperContent(index),
          );
        },
        positionSlideIcon: 0.8,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        waveType: WaveType.liquidReveal,
        fullTransitionValue: 600,
        liquidController: liquidController,
        ignoreUserGestureWhileAnimating: true,
        enableLoop: false,
      ),
    );
  }

  Column liquidSwiperContent(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            // Lottie.asset(data[index].image),
            Image.asset(data[index].image),
            Text(
              data[index].text1,
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Billy",
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              data[index].text2,
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Billy",
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              data[index].text3,
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Billy",
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
