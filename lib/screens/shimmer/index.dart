import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/layoutbulder/layoutbuilder.dart';
import 'package:riddhasoft_utils/components/shimmer/shimmereffect.dart';

class ShimmerScreen extends HookWidget {
  const ShimmerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Shimmer Effect Screen', centertitle: true),
      body: ShimmerEffect(
          child: LayoutBuilderWidget(
        mobile: MobileShimmer(),
        tablet: TabletShimmer(),
      )),
    );
  }
}

class MobileShimmer extends StatelessWidget {
  const MobileShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleAndImageShimmer(),
        TitleAndImageShimmer(),
        TitleAndImageShimmer(),
        TitleAndImageShimmer(),
        TitleAndImageShimmer(),
        TitleAndImageShimmer(),
        TitleAndImageShimmer(),
        TitleAndImageShimmer(),
        TitleAndImageShimmer(),
        CardShimmer(),
        SizedBox(
          height: 15,
        ),
        CardShimmer(),
        SizedBox(
          height: 15,
        ),
        TextShimmer(
          text: 'Shimmer on Text',
        )
      ],
    );
  }
}

class TabletShimmer extends StatelessWidget {
  const TabletShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                  TitleAndImageShimmer(),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CardShimmer(),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: CardShimmer(),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: TextShimmer(
                text: 'Shimmer on Text',
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextShimmer(
                text: 'Shimmer on Text',
              ),
            )
          ],
        ),
      ],
    );
  }
}
