import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  final icons;
  final String skills;
  final int number;
  final color;

  const Exercises(
      {Key? key,
      required this.icons,
      required this.skills,
      required this.number,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.blue.withOpacity(0.5),
              //     offset: const Offset(0, 20),
              //     spreadRadius: 5,
              //     blurRadius: 40,
              //   )
              // ]
          ),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(8),
              child: Icon(
                icons,
                size: 30,
                color: Colors.white,
              ),
            ),
            title: Text(
              skills,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('$number Exercises'),
            trailing: const Icon(
              Icons.more,
            ),
          ),
        ),

        SizedBox(height: 10,)
      ],
    );
  }
}
