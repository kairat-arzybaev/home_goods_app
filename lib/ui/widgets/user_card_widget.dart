import 'package:flutter/material.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xFF000000).withOpacity(0.15),
          offset: const Offset(0, 4),
          blurRadius: 24,
        )
      ], borderRadius: BorderRadius.circular(24)),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/card_bg_blue.png',
          ),
          const Positioned(
            top: 30,
            left: 20,
            child: Text(
              'Привет Искендер!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
              top: 90,
              left: 20,
              child: Image.asset('assets/images/qr_code.png')),
          Positioned(
              bottom: 12,
              right: 15,
              child: Row(children: const [
                Text(
                  'Начисленных\nбонусов',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '7000 с',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
              ]))
        ],
      ),
    );
  }
}
