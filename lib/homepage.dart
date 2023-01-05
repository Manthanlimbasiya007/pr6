import 'package:flutter/material.dart';
import 'package:pr6/modeldata.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String name = "manthan";
  String salary = "20000";
  String add = "surat";
  String education = "BCA";

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("first screen"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ModelData m1 = ModelData(name: name,salary: salary,address: add,education: education);
            Navigator.pushNamed(context, 'second', arguments: m1);
          },
          child: Text("Next"),
        ),
      ),

    ));
  }
}