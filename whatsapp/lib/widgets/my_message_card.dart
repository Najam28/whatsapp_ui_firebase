import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class MyMessageCard extends StatelessWidget {
  const MyMessageCard({super.key, required this.messsage, required this.date});
  final String messsage;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, left: 10, right: 20, bottom: 30),
                child: Text(
                  messsage,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        date,
                        style: const TextStyle(
                            fontSize: 13, color: Colors.white60),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.done_all,
                        color: Colors.white60,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
