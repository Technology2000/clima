import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
double lat;
double long;
class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  void initState() {
    //print("Initstate called");
    super.initState();
    getLocation();
  }
  @override
  void deactivate() {
    print('deactivate is called');
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    //print('Build method is called');
    return Scaffold(
    );
  }
  Future<void> getLocation() async{
    try{
      Position position=await Geolocator.getCurrentPosition(desiredAccuracy:LocationAccuracy.low);
      print(position);
    }
    catch(e){
      print(e);
    }
  }
}
