import 'package:flutter/material.dart';
import '../models/chat_message_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, sayabiDevs", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hi there, Hi can we help you", messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.05,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                const SizedBox(
                  width: 2,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/robot.png'),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Robo Dev",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                  bottom: 10,
                ),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType == "receiver"
                          ? Colors.grey.shade200
                          : Colors.red[500]),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageContent,
                      style: messages[index].messageType == "receiver"
                          ? const TextStyle(fontSize: 15, color: Colors.black)
                          : const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: MediaQuery.of(context).size.height * 0.08,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: TextField(
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025),
                      decoration: const InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.red,
                    elevation: 0,
                    child: Icon(
                      Icons.send_rounded,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
