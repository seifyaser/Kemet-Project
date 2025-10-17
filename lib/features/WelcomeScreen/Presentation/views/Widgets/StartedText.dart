import 'package:flutter/material.dart';

class Startedtext extends StatelessWidget {
  const Startedtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
                  child: const Text(
                    'Welcome to the Heart of\n   Egyptian Civilization',
                    style: TextStyle(
                      color: Color(0xFFF1EACE),
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
  }
}