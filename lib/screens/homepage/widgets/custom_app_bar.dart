import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text('facebook',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600)),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.grey.shade300)),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.grey.shade300)),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.messenger),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.grey.shade300)),
          ),
        ],
      ),
    );
  }
}
