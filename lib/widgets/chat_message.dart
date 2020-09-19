import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String texto;
  final String uid;
  final AnimationController animationController;

  const ChatMessage({
    Key key,
    @required this.texto,
    @required this.uid,
    @required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor:
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
      child: FadeTransition(
        opacity: animationController,
        child: Container(
          child: this.uid == '123' ? _myMesage() : _notMyMessage(),
        ),
      ),
    );
  }

  Widget _myMesage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.only(
          bottom: 10.0,
          left: 50,
          right: 8.0,
        ),
        child: Text(this.texto, style: TextStyle(color: Colors.white)),
        decoration: BoxDecoration(
            color: Color(0xff4D9EF6),
            borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  Widget _notMyMessage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.only(
          bottom: 10.0,
          right: 50,
          left: 8.0,
        ),
        child: Text(this.texto, style: TextStyle(color: Colors.black87)),
        decoration: BoxDecoration(
            color: Color(0xffE4E5E8),
            borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
}