import 'package:flutter/material.dart';

// ignore: camel_case_types
class errorDialog extends StatefulWidget {
  //const errorDialog({ Key? key }) : super(key: key);
  final String error;
  errorDialog({required this.error});

  @override
  _errorDialogState createState() => _errorDialogState();
}

// ignore: camel_case_types
class _errorDialogState extends State<errorDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: AlertDialog(
        backgroundColor: Colors.yellow[50],
        insetPadding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.3,
            bottom: MediaQuery.of(context).size.height * 0.3),
        elevation: 5.0,
        title: Text(
          "Error",
          style: TextStyle(
              color: Colors.red, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        content: Center(
          child: Text(
            widget.error,
            style: TextStyle(color: Colors.red, fontSize: 20.0),
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "OK",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
