import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'CardsScreen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screnn'),
      ),
      body: const Placeholder(),
    );
  }
}
