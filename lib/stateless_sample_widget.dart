import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_sample/rabbit.dart';

class StatelessSampleWidget extends StatelessWidget {
  late String title;
  late Rabbit rabbit;
  StatelessSampleWidget({
    required this.title,
    required this.rabbit,
  }) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      int index = timer.tick % 4;
      print(index);
      switch (index) {
        case 0:
          rabbit.updpateState(RabbitState.SLEEP);
          break;
        case 1:
          rabbit.updpateState(RabbitState.WALK);
        case 2:
          rabbit.updpateState(RabbitState.RUN);
        case 3:
          rabbit.updpateState(RabbitState.EAT);
      }
      print(rabbit.state);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        child: Center(
          child: Text(
            rabbit.state.toString(),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
