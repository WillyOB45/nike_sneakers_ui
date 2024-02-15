import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final String? text;
  const MySearchBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      enableSuggestions: true,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: text,
      ),
    );
  }
}
