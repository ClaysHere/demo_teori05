import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  Color _group = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
      body: Column(
        children: [
          RadioListTile(
            value: Colors.red,
            subtitle: const Text("ini warna merah"),
            controlAffinity: ListTileControlAffinity.trailing,
            secondary: Container(
              width: 20,
              height: 20,
              color: Colors.red,
            ),
            groupValue: _group,
            onChanged: (value) {
              setState(() {
                _group = value!;
              });
            },
            title: const Text("RED"),
          ),
          RadioListTile(
            value: Colors.blue,
            groupValue: _group,
            onChanged: (value) {
              setState(() {
                _group = value!;
              });
            },
            title: const Text("BLUE"),
          ),
          RadioListTile(
            value: Colors.green,
            groupValue: _group,
            onChanged: (value) {
              setState(() {
                _group = value!;
              });
            },
            title: const Text("GREEN"),
          ),
          RadioListTile(
            value: Colors.yellow,
            groupValue: _group,
            onChanged: (value) {
              setState(() {
                _group = value!;
              });
            },
            title: const Text("YELLOW"),
          ),
          RadioListTile(
            value: Colors.purple,
            groupValue: _group,
            onChanged: (value) {
              setState(() {
                _group = value!;
              });
            },
            title: const Text("PURPLE"),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            color: _group,
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}
