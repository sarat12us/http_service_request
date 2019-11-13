import 'package:flutter/material.dart';
import 'services/service.dart';
import 'dart:async';

class HttpService extends StatefulWidget {
  HttpService({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HttpService createState() => _HttpService();
}

class _HttpService extends State<HttpService> {

  Future getAlbums() async {
    await Service.getAlbums().then((albums) {
      print('Number of Albums ${albums.length}');
    });
  }
  
  @override
  void initState() {
    super.initState();
    getAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
