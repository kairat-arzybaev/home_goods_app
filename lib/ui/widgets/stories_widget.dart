import 'package:flutter/material.dart';
import 'package:home_goods_app/ui/widgets/story_widget.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        StoryWidget(imagePath: 'assets/images/1_circle.png'),
        StoryWidget(imagePath: 'assets/images/2_circle.png'),
        StoryWidget(imagePath: 'assets/images/3_circle.png'),
        StoryWidget(imagePath: 'assets/images/4_circle.png'),
        StoryWidget(imagePath: 'assets/images/5_circle.png'),
      ],
    );
  }
}
