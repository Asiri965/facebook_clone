import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text(
            "facebook",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 15,
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 15,
            child: const Icon(
              Icons.messenger,
              color: Colors.white,
              size: 17,
            ),
          ),
        ],
      ),
    );
  }
}
