import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info[0]['name'].toString()),
        backgroundColor: appBarColor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          // TextField(
          //   decoration: InputDecoration(
          //     filled: true,
          //     fillColor: mobileChatBoxColor,
          //     prefixIcon: Padding(
          //       padding: const EdgeInsets.symmetric(
          //         horizontal: 20,
          //       ),
          //       child: IconButton(
          //           onPressed: () {},
          //           icon: const Icon(
          //             Icons.emoji_emotions,
          //             color: Colors.grey,
          //           )),
          //     ),
          //     hintText: 'Message',
          //     contentPadding: const EdgeInsets.all(10),
          //     border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(20),
          //         borderSide:
          //             const BorderSide(width: 0, style: BorderStyle.none)),
          //     suffixIcon: Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 20),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           IconButton(
          //               onPressed: () {},
          //               icon: const Icon(
          //                 Icons.attach_file,
          //                 color: Colors.grey,
          //               )),
          //           IconButton(
          //               onPressed: () {},
          //               icon: const Icon(
          //                 Icons.camera_alt,
          //                 color: Colors.grey,
          //               ))
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: mobileChatBoxColor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          icon: const Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          ),
                          onPressed: () {}),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.red),
                            hintText: "Message",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.photo_camera,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                    color: Colors.teal, shape: BoxShape.circle),
                child: InkWell(
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
