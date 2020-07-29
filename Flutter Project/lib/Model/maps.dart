import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class Maps extends StatefulWidget {
  Maps({Key key}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override

  final LatLng _center = new LatLng(26.8065, 87.2846);
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
              initialCameraPosition: CameraPosition(target: _center,zoom: 11.0),
       )
    );
  }
}