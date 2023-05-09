// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:home_goods_app/components/app_colors.dart';

class BestSellersWidget extends StatelessWidget {
  final String imagePath;
  final int price;
  final String title;
  final int stockCount;

  const BestSellersWidget({
    Key? key,
    required this.imagePath,
    required this.price,
    required this.title,
    required this.stockCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        height: 250,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            imagePath,
          ),
          Text(
            '${price.toString()} сом',
            style: const TextStyle(
                color: AppColors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          Text(title),
          Row(children: [
            const Text('Доступно:'),
            Text(' $stockCount',
                style: const TextStyle(color: AppColors.red, fontSize: 16)),
            const Spacer(),
            FloatingActionButton.small(
                onPressed: () {}, child: const Icon(Icons.add))
          ]),
          
        ]));
  }
}
