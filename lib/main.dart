import 'package:flutter/material.dart';
import 'package:widget_sample/rabbit.dart';
import 'package:widget_sample/stateful_sample_widget.dart';
import 'package:widget_sample/stateless_sample_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ScaffoldSample());
  }
}

class ScaffoldSample extends StatefulWidget {
  const ScaffoldSample({super.key});

  @override
  State<ScaffoldSample> createState() => _ScaffoldSampleState();
}

class _ScaffoldSampleState extends State<ScaffoldSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scafflod 알아보기"),
      ),
      body: const Center(
        child: TextField(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("버튼"),
        onPressed: () {
          print("clicked");
        },
      ),
      resizeToAvoidBottomInset: false,
      drawer: const Drawer(
        child: Center(
          child: Text("슬라이드 메뉴"),
        ),
      ),
      endDrawer: const Drawer(
        child: Center(
          child: Text("반대쪽 햄버거 메뉴"),
        ),
      ),
      bottomNavigationBar: (BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          print(index);
        },
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      )),
    );
  }
}
