import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hey_there/MainPage.dart';

class MainPageState extends State<MainPage> {
  final String _appName = 'Hey There';
  final String _messageInCentre = 'Hey There';
  final Random _random = Random();
  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text(_appName)),
      body: InkWell(
        onTap: changeColor,
        child: Container(
            color: _color,
            child: new Center(
                child: new Text(_messageInCentre,style:TextStyle(color: Colors.black,fontSize: 40,fontStyle: FontStyle.italic)))
        ),
      ),
    );
  }
}