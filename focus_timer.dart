import 'dart:async';
import 'package:flutter/material.dart';

class FocusTimer extends StatefulWidget {
  const FocusTimer({super.key});

  @override
  State<FocusTimer> createState() => _FocusTimerState();
}

class _FocusTimerState extends State<FocusTimer> {
  int seconds = 1500;
  Timer? timer;

  void start() {
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (seconds > 0) {
        setState(() => seconds--);
      } else {
        t.cancel();
      }
    });
  }

  void stop() {
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    int min = seconds ~/ 60;
    int sec = seconds % 60;

    return Scaffold(
      appBar: AppBar(title: const Text("Focus Timer")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$min:${sec.toString().padLeft(2, '0')}",
                style: const TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: start, child: const Text("Start")),
            ElevatedButton(onPressed: stop, child: const Text("Stop")),
          ],
        ),
      ),
    );
  }
}
