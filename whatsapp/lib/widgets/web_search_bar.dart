import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefixIcon: const Icon(Icons.search, size: 20),
            hintStyle: const TextStyle(fontSize: 12),
            hintText: 'Search or start new chat',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(style: BorderStyle.none, width: 0),
            ),
            contentPadding: const EdgeInsets.all(10)),
      ),
    );
  }
}
