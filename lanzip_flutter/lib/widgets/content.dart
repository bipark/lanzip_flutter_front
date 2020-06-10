import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:developer';

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
    print(_contentList);
    print(_contentList.runtimeType);
  }

  ListTile _listViewDetail(BuildContext context, int index) {
    return ListTile(
        title: Text(_contentList[index]["content"])
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