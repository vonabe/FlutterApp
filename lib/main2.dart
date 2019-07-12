import 'package:flutter/material.dart';
import 'package:flutter_app/AddedPage.dart';
import 'package:flutter_app/FavoritePage.dart';
import 'package:flutter_app/HomePageTimer.dart';
import 'package:flutter_app/MapPage.dart';
import 'package:flutter_app/SettingPage.dart';
import 'package:flutter_app/Utils.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(
        title: Utils.app_name,
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title = 'vonabe'});

//  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _selectItem = 0;

  PageView pageView;
  PageController controller;
  BottomNavigationBar bottomNavigationBar;

  @override
  void initState() {
    super.initState();
//    Fluttertoast.showToast(msg: 'initState _MyHomePageState');
    controller = PageController(initialPage: _selectItem, keepPage: true);
    pageView = PageView(
      controller: controller,
      reverse: false,
      onPageChanged: (int current) {
        setState(() {
          _selectItem = current;
        });
      },
      children: <Widget>[
        HomePageTimer(), FavoritePage(), AddedPage(), MapPage(), SettingPage()
      ],
    );

  }

  @override
  Widget build(BuildContext context) {
//    controller.animateToPage(_selectItem, duration: Duration(microseconds: 500), curve: Curves.ease);

    bottomNavigationBar = BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('', style: TextStyle(height: 0.0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('', style: TextStyle(height: 0.0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('', style: TextStyle(height: 0.0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('', style: TextStyle(height: 0.0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('', style: TextStyle(height: 0.0)))
        ],
        onTap: (int value) {
          setState(() {
            _selectItem = value;
          });
          controller.animateToPage(_selectItem, duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
        iconSize: 28,
        currentIndex: _selectItem,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Utils.app_color
    );

    var scaffold = Scaffold(
        body: pageView,
        floatingActionButton: FloatingActionButton(
          onPressed: () { /*TODO ButtonPressed Logic*/},
          elevation: 5,
          mini: true,
          child: Icon(Icons.keyboard_arrow_up),
        ), // This trailing comma makes auto-formatting nicer for build methods.
        bottomNavigationBar: bottomNavigationBar);

    return scaffold;
  }
}