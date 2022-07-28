import 'package:flutter/material.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/chat');
          },
          backgroundColor: const Color(0xFFF37777),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.08,
            child: Image.asset("assets/images/chat.png"),
          ),
        ),
      ),
    );
  }
}
