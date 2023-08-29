import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
class LocStudy extends StatefulWidget {
  const LocStudy({super.key});

  @override
  State<LocStudy> createState() => _LocStudyState();
}

class _LocStudyState extends State<LocStudy> {
  late Position position;
  String placeName='';
  String pinCode='';



  Future  GetPermission() async{
    LocationPermission Permission;
    Permission=await Geolocator.checkPermission();
    if(Permission==LocationPermission.denied){
      Permission=await Geolocator.requestPermission();
      if(Permission==LocationPermission.denied){
        return false;
      }
    }
    if(Permission==LocationPermission.deniedForever){
      return false;
    }

     bool serviceEnabled= await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      Geolocator.openLocationSettings();
      return false;
    }
    return true;
  }
  Future getLocation()async{
    bool prmsn=await GetPermission();
    if(prmsn==true){
      print('permission granted');
      position=await Geolocator.getCurrentPosition();
      getAddress(position);
    }
  }
  Future getAddress( Position position)async{
    try{
      List<Placemark>plcmrk=await placemarkFromCoordinates(position.latitude, position.longitude);
      print('placemark=$plcmrk');
      Placemark plc=plcmrk[0];
      print('place=$plc');
      setState(() {
        placeName=plc.locality!;
        pinCode=plc.postalCode!;
      });
      
    }catch(f){
      print('Error$f');
    }
    

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('place=$placeName'),
            Text('pin code=$pinCode'),
            ElevatedButton(
                onPressed: (){
                  getLocation();
                },
                child: Text('get location')),
          ],
        ),
      ),
    );
  }
}
