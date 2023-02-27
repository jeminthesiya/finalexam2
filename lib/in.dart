import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class out extends StatefulWidget {
  const out({Key? key}) : super(key: key);

  @override
  State<out> createState() => _outState();
}

class _outState extends State<out> {
  TextEditingController txtdata = TextEditingController();
  GlobalKey<FormState> check = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
      key: check,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Data"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: "Enter data",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.phone,
                controller: txtdata,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (check.currentState!.validate()) {
                  Navigator.pushNamed(context, 'output',
                      arguments: txtdata.text);
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: Text(
                "Done",
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
