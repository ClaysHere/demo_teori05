import 'package:flutter/material.dart';

class ChipScreen extends StatefulWidget {
  const ChipScreen({super.key});

  @override
  State<ChipScreen> createState() => _ChipScreenState();
}

class _ChipScreenState extends State<ChipScreen> {
  int? _value = 1;

  final List<Map<String, dynamic>> _person = [
    {"nama": "Leo", "latihan": "Lari"},
    {"nama": "Andrew", "latihan": "Tidur"},
    {"nama": "Arda", "latihan": "Tidur"},
    {"nama": "Kevin", "latihan": "Sepeda"}
  ];

  final List<String> _latihan = ["Lari", "Badminton", "Sepeda", "Tidur"];

  final Set<String> _filterLatihan = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text("Choose an Item : "),
            Wrap(
              spacing: 10,
              children: [
                ...List.generate(3, (index) {
                  return ChoiceChip(
                    label: Text("Item $index"),
                    selected: index == _value,
                    onSelected: (value) {
                      setState(() {
                        _value = index;
                      });
                    },
                  );
                })
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Text("Filter Chip : "),
            Wrap(
              spacing: 10,
              children: [
                ..._latihan.map((e) {
                  return FilterChip(
                      label: Text(e),
                      selected: _filterLatihan.contains(e),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _filterLatihan.add(e);
                          } else {
                            _filterLatihan.remove(e);
                          }
                        });
                      });
                })
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ..._person.map((e) => Text(
                  "${e["nama"]}, ${e["latihan"]}",
                ))
          ],
        ),
      ),
    );
  }
}
