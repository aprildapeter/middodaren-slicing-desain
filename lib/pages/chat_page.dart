import 'package:flutter/material.dart';
import 'package:middodaren/theme.dart';
import 'package:middodaren/widget/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: primaryColor,
          centerTitle: false,
          title: Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: whiteColor,
                  backgroundImage: AssetImage('assets/logo.png'),
                  radius: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Midodaren')
              ],
            ),
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message...',
                          hintStyle: primaryTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                    child: Icon(
                  Icons.send,
                  color: primaryText,
                  size: 35,
                )),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Ada yang bisa dibantu',
          ),
          ChatBubble(
            isSender: false,
            text:
                'Ada yang bisa dibantu Ada yang bisa dibantu Ada yang bisa dibantu',
          )
        ],
      );
    }

    return Scaffold(
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
