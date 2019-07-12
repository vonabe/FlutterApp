import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/ticker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/timer_bloc.dart';

class HomePageTimer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StateTimer();
  }

}

class StateTimer extends State<HomePageTimer> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var block = BlocProvider(
      builder: (context) => TimerBloc(ticker: Ticker()),
      child: Timer(),
    );
    return block;
  }

}