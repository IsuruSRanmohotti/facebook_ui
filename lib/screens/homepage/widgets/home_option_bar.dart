import 'package:flutter/material.dart';

class HomeOptionBar extends StatelessWidget {
  const HomeOptionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(
                Icons.video_call_rounded,
                color: Colors.red,
                size: 35,
              ),
              Text(
                'Live',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.image,
                color: Colors.green,
                size: 35,
              ),
              Text(
                'Photo',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.face,
                color: Colors.amber.shade600,
                size: 35,
              ),
              const Text(
                'Feeling/Activity',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ),
    );
  }
}