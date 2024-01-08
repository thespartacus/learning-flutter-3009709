import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  //TODO Create reusable widgets for Chat Bubble and Chat Input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi Pooja!'),
        actions: [
          IconButton(
              onPressed: () {
                print('Icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                //TODO: Remove duplicated code
                ChatBubble(alignment: Alignment.centerLeft, message: 'Hi, This is your message!'),
                ChatBubble(alignment: Alignment.centerRight, message: 'Hi, This is Dheeraj!'),
                ChatBubble(alignment: Alignment.centerRight, message: 'Hi, This is your message!')
              ],
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
