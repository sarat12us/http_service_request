import 'package:flutter/material.dart';
import 'package:http_request_json/http_request.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Http  request ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HttpService(title: 'Http request'),
    );
  }
}


