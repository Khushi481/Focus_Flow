import 'package:flutter/material.dart';

class BrainDump extends StatefulWidget {
  const BrainDump({super.key});

  @override
  State<BrainDump> createState() => _BrainDumpState();
}

class _BrainDumpState extends State<BrainDump> {
  final controller = TextEditingController();
  List<String> thoughts = [];

  void organize() {
    thoughts = controller.text
        .split("\n")
        .where((e) => e.trim().isNotEmpty)
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Brain Dump")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          TextField(
            controller: controller,
            maxLines: 6,
            decoration: const InputDecoration(
                hintText: "Jo jo dimaag me chal raha likh do...",
                border: OutlineInputBorder()),
          ),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: organize, child: const Text("Organize")),
          Expanded(
            child: ListView.builder(
              itemCount: thoughts.length,
              itemBuilder: (_, i) =>
                  Card(child: ListTile(title: Text(thoughts[i]))),
            ),
          )
        ]),
      ),
    );
  }
}
