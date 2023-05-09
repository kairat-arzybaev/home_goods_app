// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AddressListTile extends StatelessWidget {
  final String shopName;
  final String address;
  final String workTime;
  const AddressListTile({
    Key? key,
    required this.shopName,
    required this.address,
    required this.workTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 230,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF000000).withOpacity(0.07),
                blurRadius: 20,
                offset: const Offset(4, 4))
          ]),
      child: ListTile(
        // tileColor: Colors.white,
        isThreeLine: true,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          children: [
            Text(
              shopName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right))
          ],
        ),
        subtitle: Column(
          children: [
            Row(
              children: [const Icon(Icons.location_on_rounded), Text(address)],
            ),
            Row(
              children: [const Icon(Icons.access_time), Text(workTime)],
            ),
          ],
        ),
      ),
    );
  }
}
