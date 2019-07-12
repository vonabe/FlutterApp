import 'package:flutter/material.dart';
import 'package:flutter_app/Utils.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Center(
        child: Text('Map Page', style: TextStyle(color: Utils.app_color, fontSize: 20.0),),
      ),
    );
  }


}