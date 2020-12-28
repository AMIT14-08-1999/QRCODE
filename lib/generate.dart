import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  Generate({Key key}) : super(key: key);

  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  String qrData = "https://github.com/neon97";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SCAN"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QrImage(
                data: qrData,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Get Your data/link to the QR CODE",
                style: TextStyle(color: Colors.pink, fontSize: 30.0),
              ),
              TextField(
                controller: qrText,
                decoration: InputDecoration(
                  hintText: "Enter the Data/Link",
                  focusColor: Colors.amber,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                padding: EdgeInsets.all(20.0),
                child: Text("GENERATE QR CODE",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  if (qrText.text.isEmpty) {
                    setState(() {
                      qrData = "https://flutter.dev";
                    });
                  } else {
                    setState(() {
                      qrData = qrText.text;
                    });
                  }
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.orange, width: 3.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}
