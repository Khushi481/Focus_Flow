import 'package:flutter/material.dart';

class VibeScreen extends StatelessWidget {
  const VibeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vibe Check")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("How are you feeling?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text("Overwhelmed")),
          ElevatedButton(onPressed: () {}, child: const Text("Bored")),
          ElevatedButton(onPressed: () {}, child: const Text("Neutral")),
        ],
      ),
    );
  }
}
