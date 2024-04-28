

import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 19/9,
          child: Image.network('https://images3.alphacoders.com/121/121929.jpg',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
        ),
      
      ),
    );
  }
}