import 'package:flutter/material.dart';
import 'package:pr6/modeldata.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    ModelData m1 = ModalRoute
        .of(context)!
        .settings
        .arguments as ModelData;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("${m1.name}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${m1.salary}"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'third');
              },
              child: Text("next"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back"),
            )
          ],
        ),
      ),
    ));
  }
}