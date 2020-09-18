import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final Function onPresesed;

  const BotonAzul({
    Key key,
    this.text,
    this.onPresesed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      shape: StadiumBorder(),
      elevation: 2,
      highlightElevation: 5,
      onPressed: this.onPresesed,
      child: Container(
        width: double.infinity,
        height: 55.0,
        child: Center(
          child: Text(this.text,
              style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }
}
