import 'package:flutter/material.dart';
import 'package:middodaren/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: whiteColor,
                  backgroundImage: AssetImage('assets/logo.png'),
                  radius: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Broth',
                        style: secondaryTextStyle.copyWith(
                          fontWeight: semibold
                        ),
                      ),
                      Text(
                        'Ada yang bisa dibantu ?',
                        style: subTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Icon(Icons.numbers,color: primaryColor,),
              ],
            ),
            SizedBox(height: 10,),
            Divider(
            )
          ],
        ),
      ),
    );
  }
}
