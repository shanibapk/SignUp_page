import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class BackendComuntn extends StatefulWidget {
  const BackendComuntn({super.key});

  @override
  State<BackendComuntn> createState() => _BackendComuntnState();
}

class _BackendComuntnState extends State<BackendComuntn> {
  var gotData=false;
  bool downLoading=false;
  var data;
  Future <bool> downLoadData() async{
    var response;
    try{
      var url=Uri.parse('https://dummyjson.com/products/1');
      response= await http.get(url);
    }catch(a){
      print('Error=$a');
      return false;

    }
    print('Data status code=${response.statusCode}');
    print('data=${response.body}');
    data=jsonDecode(response.body);
    print('json Decode${data}');
    print('title=${data['title']}');
    setState(() {

    });
    return true;
  }
  Future <bool> post() async{
    var response;
    var data={"title":'iam shaniba','userId':'5'};
    try{
      var url=Uri.parse('https://dummyjson.com/products/add');
      response= await http.post(url,body: data);
    }catch(a){
      print('Error=$a');
      return false;
    }
    print('Data status code=${response.statusCode}');
    print('data=${response.body}');
    return true;
  }
  Future <dynamic> put() async{
    var response;
    var data={"title":"i think i should shift to sun"};
    try{
      var url=Uri.parse('https://dummyjson.com/posts/1');
      response= await http.put(url,body: data);
    }catch(a){
      print('Error=$a');
      return false;
    }
    print('Data status code=${response.statusCode}');
    print('data=${response.body}');
    return true;
  }
  Future <dynamic> delete() async{
    var response;

    try{
      var url=Uri.parse('https://dummyjson.com/posts/1');
      response= await http.delete(url);
    }catch(a){
      print('Error=$a');
      return false;
    }
    print('Data status code=${response.statusCode}');
    print('data=${response.body}');
    return true;
  }
  // Future<bool> dataGet() async{
  //   final response=http.get('https://dummyjson.com/products/1');
  // }


  // bool getData(){
   //   gotData=true;
   //   return gotData;
   // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           downLoading? Container(
            height:  400,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,

             child: gotData? Column(
               children: [
                 Text('item=${data['title']}',style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                 Text('id=${data['id']}',style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                 Text('category=${data['category']}',style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                 Text('price=${data['price']}',style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                 Text('brand=${data['brand']}',style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),)
               ],
             )
                 : Center(
               child: SizedBox(
                 height: 100,
                 width: 100,
                 child: CircularProgressIndicator(),
               ),
             ),

           )
          :Container(
             height:  400,
             width: MediaQuery.of(context).size.width,
             color: Colors.grey,
            child: Center(child: Text('press the buttons')),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Column(
              children: [
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        downLoading=true;
                      });
                      gotData=await downLoadData();

                    },
                    child:Text('GET')),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: ()async{
                      await post();

    },

                    child:Text('POST')),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: ()async{
                      await put();
                    },
                    child:Text('PUT')),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: ()async{
                      await delete();

                    },
                    child:Text('DELETE'))
              ],
            ),

          )

        ],
      ),
    );
  }
}
