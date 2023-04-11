import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomePeg(),
  ));
}

class HomePeg extends StatefulWidget {
  const HomePeg({Key? key}) : super(key: key);

  @override
  State<HomePeg> createState() => _HomePegState();
}

class _HomePegState extends State<HomePeg> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(value: check1, onChanged: (value) {
                setState(() {
                  check1 = value!;
                });
              },),
              Text("One")
            ],
          ),
          Row(
            children: [
              Checkbox(value: check2, onChanged: (value) {
                setState(() {
                  check2 = value!;
                });
              },),
              Text("Two")
            ],
          ),
          Row(
            children: [
              Checkbox(value: check3, onChanged: (value) {
                setState(() {
                  check3 = value!;
                });
              },),
              Text("Three")
            ],
          )
        ],
      ),
    );
  }
}
