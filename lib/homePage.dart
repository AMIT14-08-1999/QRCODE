import 'package:flutter/material.dart';
import 'package:velocityx/generate.dart';
import 'package:velocityx/scan.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QrCode Scanner"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: NetworkImage(
                    "https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556"),
              ),
              flatButton("SCAN QR CODE", Scan()),
              SizedBox(
                height: 20.0,
              ),
              flatButton("SCAN QR CODE", Generate()),
            ],
          ),
        ),
      ),
    );
  }

  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(20.0),
      child: Text(text,
          style: TextStyle(
              color: Colors.pink, fontSize: 20, fontWeight: FontWeight.bold)),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => widget,
        ));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Colors.orange, width: 3.0),
      ),
    );
  }
}
