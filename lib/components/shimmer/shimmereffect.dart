import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class ShimmerEffect extends StatelessWidget {
  ShimmerEffect({Key? key, required this.child}) : super(key: key);
  Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: child,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextShimmer extends StatelessWidget {
  TextShimmer({
    Key? key,
    required this.text,
  }) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.5),
        highlightColor: Colors.grey.withOpacity(0.3),
        child: Text(text));
  }
}

class CardShimmer extends StatelessWidget {
  const CardShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.5),
        highlightColor: Colors.grey.withOpacity(0.3),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          height: 250,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(25.0)),
        ));
  }
}

class TitleAndImageShimmer extends StatelessWidget {
  const TitleAndImageShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.5),
        highlightColor: Colors.grey.withOpacity(0.3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                )),
            Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: LinearProgressIndicator(
                          value: 0.7,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                          backgroundColor: Color(0xffD6D6D6),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: 0.7,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: 0.7,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: 0.7,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
