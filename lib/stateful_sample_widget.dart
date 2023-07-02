import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_sample/rabbit.dart';

class StatefulSampleWidget extends StatefulWidget {
  late String title;
  late Rabbit rabbit;
  StatefulSampleWidget({
    required this.title,
    required this.rabbit,
  });

  @override
  State<StatefulSampleWidget> createState() => _StatefulSampleWidgetState();
}

class _StatefulSampleWidgetState extends State<StatefulSampleWidget> {
  bool stateBool = false;
  @override
  void initState() {
    super.initState();
    stateBool = false;
    print("init state");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChange deps");
  }

  @override
  Widget build(BuildContext context) {
    print("build");

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Center(
          child: Center(
              child: Text(
            widget.rabbit.state.toString(),
            style: const TextStyle(
              fontSize: 20,
            ),
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Text("Button"),
          onPressed: () {
            setState(() {
              stateBool = !stateBool;
            });
          }),
    );
  }
}
