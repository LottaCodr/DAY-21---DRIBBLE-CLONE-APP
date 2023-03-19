
import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
  final String emoji;
  final String feels;

  const Emojis({Key? key, required this.emoji, required this.feels})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(

        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
            child: Text(
              emoji,
              style: const TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
          SizedBox(height: 8,),
          Text(
            feels,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}
