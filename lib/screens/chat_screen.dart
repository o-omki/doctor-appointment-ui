import "package:flutter/material.dart";

import "../widgets/chat_sample.dart";

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: const Color(0xFF7165D6),
            leadingWidth: 30,
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/doctor1.jpeg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Dr. John Doe",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(
                  top: 8,
                  right: 15,
                ),
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8,
                  right: 10,
                ),
                child: Icon(
                  Icons.video_call,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8,
                  right: 10,
                ),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: 4,
          padding: const EdgeInsets.only(
            top: 20,
            left: 15,
            right: 15,
            bottom: 80,
          ),
          itemBuilder: (context, index) {
            return const ChatSample();
          },
        ),
        bottomSheet: Container(
          height: 65,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.amber,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Type  somethin'",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.send,
                  size: 30,
                  color: Color(0xFF7165D6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
