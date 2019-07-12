import 'package:flutter/material.dart';
import 'package:flutter_app/Utils.dart';


class HomePage extends StatefulWidget {
  int status = 0;
  final String toolbar_title = 'Lapki';

  @override
  _StateLogin createState() {
    return new _StateLogin();
  }
}

class _StateActive extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.status = 1;
            });
          },
          child: Text(
            'Списки объявлений',
            style: TextStyle(color: Utils.app_color, fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}

class _StateInternetError extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            widget.status = 2;
          });
        },
        child: Text(
          'Нет интернет соединения',
          style: TextStyle(color: Colors.red, fontSize: 20.0),
        ),
      )),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

}

class _StateLogin extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          backgroundColor: Colors.lightGreen,
          title: Text(widget.toolbar_title),
        ),
      body: Container(
        color: Colors.red[200],
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.status = 0;
              });
            },
            child: Text(
              'Нужно авторизоваться',
              style: TextStyle(color: Colors.red, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
    return scaffold;
  }
}
