import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class BackEnd extends StatefulWidget {
  const BackEnd({super.key});

  @override
  State<BackEnd> createState() => _BackEndState();
}

class _BackEndState extends State<BackEnd> {
  bool downLoading=false;
  var gotData=false;
  var data;
  Future<bool> downLoadData() async{
    var response;
    try{
      var url=Uri.parse('https://dummyjson.com/products/1');
      response=await http.get(url);
    }catch(a){
      print('error=$a');
      return false;
    }
    print('data status code${response.statusCode}');
    print('data${response.body}');
    data=jsonDecode(response.body);
    print('jsonDecode${data}');
    print('data${data['title']}');
    return true;
  }
  Future<dynamic>post()async{
    var response;
    var data={'title':'this is code','uesId':'2'};
    try{
      var url=Uri.parse('https://dummyjson.com/products/add');
      response=await http.post(url,body:data);
    }catch(a){
      print('Error$a');
      return false;
    }
    print('data status code${response.statusCode}');
    print('data${response.body}');

  }
  Future<dynamic>put()async{
    var response;
    var data={'title':'change to program'};
    try{
      var url=Uri.parse('https://dummyjson.com/products/1');
      response=await http.put(url,body:data);
    }catch(a){
      print('Error$a');
      return false;
    }
    print('data status code${response.statusCode}');
    print('data${response.body}');
  }
  Future<dynamic>delete()async{
    var response;
    try{
      var url=Uri.parse('https://dummyjson.com/products/1');
      response=await http.delete(url);
    }catch(a){
      print('error$a');
      return false;
    }
    print('data status code${response.statusCode}');
    print('data${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          downLoading? Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child:gotData? Column(
              children: [
                Text('item=${data['title']}'),
                Text('id=${data['title']}'),
                Text('category=${data['title']}'),
                Text('price=${data['title']}'),
                Text('brand=${data['title']}')
              ],
            )
                :Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(),
              ),
            ),
      )
          :Container(
        width: MediaQuery.of(context).size.width,
    height: 400,
    color: Colors.grey,
    child: Text('click the buttons',),
    ),
    Container(
    width: MediaQuery.of(context).size.width,
    height: 300,
    color: Colors.amber,
    child: Column(
    children: [
      ElevatedButton(onPressed: ()async{
        setState(() {
          downLoading=true;
        });
        gotData=await downLoadData();
      }, child: Text('get')
    ),
    ElevatedButton(onPressed: ()async{
      await post();
    }, child: Text('post')
    ),
    ElevatedButton(onPressed: ()async{
      await put();
    }, child: Text('put')
    ),
    ElevatedButton(onPressed: ()async{
      await delete();
    }, child: Text('delet'))
    
    
    ],
    ),
    )
          
    


        ],
      ),

    );
  }
}
