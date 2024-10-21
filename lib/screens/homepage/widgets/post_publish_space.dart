import 'package:flutter/material.dart';

import '../../../data/demo_data.dart';

class PostPublishSpace extends StatelessWidget {
  const PostPublishSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(DemoData.demoProfilePicture),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                hintText: 'Whats on your mind?',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
          ))
        ],
      ),
    );
  }
}