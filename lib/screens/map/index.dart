import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/map/map.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Map', centertitle: true),
      body: SafeArea(
        child: mapContainer(LatLng(27.7172, 85.3240)),
      ),
    );
  }
}
