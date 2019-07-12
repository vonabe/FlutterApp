import 'package:flutter/material.dart';
import 'package:flutter_app/Utils.dart';

class SettingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Center(
        child: Text('Setting Page', style: TextStyle(color: Utils.app_color, fontSize: 20.0),),
      ),
    );
  }

}