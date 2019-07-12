import 'package:flutter/material.dart';
import 'package:flutter_app/Utils.dart';

class AddedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: Center(
        child: Text('Added Page', style: TextStyle(color: Utils.app_color, fontSize: 20.0),),
      ),
    );
  }

}