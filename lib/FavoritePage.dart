import 'package:flutter/material.dart';
import 'package:flutter_app/Utils.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var defaultTabController = DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: SafeArea(
              child: TabBar(
                onTap: (int) {},
                tabs: <Widget>[
                  Tab(
                    text: 'Favorite',
                  ),
                  Tab(
                    text: 'My Notice',
                  )
                ],
              ),
            ),
          ),
        ));
    return defaultTabController;
  }
}
