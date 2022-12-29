import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final Message chat = chats[index];
            return Row(
              //styling and code for a single message
              children: <Widget>[
                //sender image
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: AssetImage(chat.sender.imageUrl),
                ),
                const SizedBox(width: 10.0),
                Column(
                  //aligning to start, how individual messages appear on whatsapp
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      chats[index].sender.name,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(chat.text),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
