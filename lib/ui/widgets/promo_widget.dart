// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PromoWidget extends StatelessWidget {
  final String imagePath;
  const PromoWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: 230,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Image.asset(imagePath)),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Дарим подарки каждую\nнеделю + 2 путеществие',
                // textAlign: TextAlign.left,
              ),
            ),
          ],
        ));
  }
}
