import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    String m1 = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return multi(m1 as String, index);
        },
      ),
    ));
  }

  Widget multi(String num, int inde) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "$num",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          Text(
            "X",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          Text(
            "${inde + 1}",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          Text(
            "=",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          Text(
            "${(int.parse(num) * (inde + 1))}",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
