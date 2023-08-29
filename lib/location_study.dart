import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  late Position position;
  String PlaceName='';
  String PinCode='';
  Future getPermission() async {
    bool serviceEnabled;
    LocationPermission permission;
    permission=await Geolocator.checkPermission();
    if(permission==LocationPermission.denied){
      permission=await Geolocator.requestPermission();
      if(permission==LocationPermission.denied){
        return false;
      }
    }
    if(permission==LocationPermission.deniedForever){
      return false;
    }
    serviceEnabled= await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      Geolocator.openLocationSettings();
      return false;
    }
    return true;
  }
  Future getAddrsFrmPstn(Position position)async{
    try{
      List<Placemark> placemark=await placemarkFromCoordinates(position.latitude, position.longitude);
      print('Placemark=$placemark');
      Placemark plc=placemark[0];
      print('Place=$plc');
      setState(() {
        PlaceName=plc.locality!;
        PinCode=plc.postalCode!;
      });
    }catch(a){
      print('Error=$a');
    }
  }
  Future getLocation() async{
    bool result=await getPermission();
    if(result==true){
      print('permission granted');
      position=await Geolocator.getCurrentPosition();
      getAddrsFrmPstn(position);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Location'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Place=$PlaceName'),
            Text('Pin Code=$PinCode'),
            ElevatedButton(
                onPressed: (){
                  getLocation();
                },
                child: Text('get'))
          ],
        ),
      ),
    );
  }
}
