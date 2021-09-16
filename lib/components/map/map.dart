import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

mapContainer(LatLng location) {
  var mapboxStyleUrl =
      "https://api.mapbox.com/styles/v1/christhapa9/ckst8yycr2i2d18pfjdv6ut95/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiY2hyaXN0aGFwYTkiLCJhIjoiY2tzdDkxa2IxMTNuczMyb2RlZmdzdjk3ZSJ9.dQkDvCiNPlYrLejzesPCcw";
  var tileLayerOptions = TileLayerOptions(
      opacity: 0.8,
      retinaMode: true,
      maxZoom: 5,
      minZoom: 5,
      urlTemplate: mapboxStyleUrl,
      additionalOptions: {
        'accessToken':
            'pk.eyJ1IjoiY2hyaXN0aGFwYTkiLCJhIjoiY2tzdDkxa2IxMTNuczMyb2RlZmdzdjk3ZSJ9.dQkDvCiNPlYrLejzesPCcw',
        'id': 'mapbox.mapbox-streets-v8'
      });

  var marker = Marker(
    width: 50.0,
    height: 50.0,
    point: LatLng(27.7172, 85.3240),
    builder: (ctx) => Container(
        child: CircleAvatar(
      child: Image.asset('assets/marker.png'),
      backgroundColor: Colors.white.withOpacity(0.1),
    )),
  );

  return Container(
    child: FlutterMap(
      options: MapOptions(
          center: LatLng(27.7172, 85.3240), maxZoom: 55, minZoom: 2, zoom: 15),
      layers: [
        tileLayerOptions,
        MarkerLayerOptions(
          markers: [
            marker,
            Marker(
              width: 50.0,
              height: 50.0,
              point: LatLng(28.7172, 86.3240),
              builder: (ctx) => Container(
                  child: CircleAvatar(
                child: Image.asset('assets/marker.png'),
                backgroundColor: Colors.white.withOpacity(0.1),
              )),
            )
          ],
        ),
      ],
    ),
  );
}
