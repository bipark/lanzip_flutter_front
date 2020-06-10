import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';

class ContentListState extends State<ContentList> {

  List _contentList = List<dynamic>();

  @override
  void initState() {
    super.initState();
    _getContentLists();
  }

  Future<String> _getContentLists() async{
    log("---------------- ---------------");
    http.Response res = await http.get(
        Uri.encodeFull('http://pnet.kr:3900/v1/content/list')
    );

    final Map<String, dynamic> data = jsonDecode(res.body);
    setState(()=>{
      _contentList = data["contents"]
    });
//    log("$_contentList");
//    print(_contentList.runtimeType);
  }

//  ListTile _listViewDetail(BuildContext context, int index) {
//    List _photos = _contentList[index]["photos"];
//    print(_photos);
//    return ListTile(
//      title: _contentList[index]["user"]["profile"] != null ? Image.network(_contentList[index]["user"]["profile"]) : null,
//      subtitle: Text(_contentList[index]["content"])
//    );
//  }

  ListTile _listViewDetail(BuildContext context, int index) {
    List _photos = _contentList[index]["photos"];
    print(_photos);
    return ListTile(
        title: CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: _photos.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.amber
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),
        subtitle: Text(_contentList[index]["content"])
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("랜선집사")
      ),
      body: ListView.builder(
        itemCount: _contentList.length,
        itemBuilder: _listViewDetail,
      ),
    );
  }
}

class ContentList extends StatefulWidget {
  @override
  createState()=>ContentListState();
}