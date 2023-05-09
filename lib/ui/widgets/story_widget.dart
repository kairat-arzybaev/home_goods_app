// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String imagePath;
  const StoryWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30.0,
      child: SizedBox(
          height: 50.0,
          width: 50.0,
          child: Image.asset(imagePath, fit: BoxFit.fill)),
    );
  }
}
