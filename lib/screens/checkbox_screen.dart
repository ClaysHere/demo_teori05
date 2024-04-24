import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  List<Map<String, dynamic>> pilihan = [
    {"makanan": "Nasi Goreng", "selected": false},
    {"makanan": "Ayam Goreng", "selected": false},
    {"makanan": "Mie Goreng", "selected": false},
    {"makanan": "Mie Ayam", "selected": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text(
              "Makanan Favorit",
              style: TextStyle(fontSize: 24),
            ),
            ...pilihan.map(
              (item) => CheckboxListTile(
                  value: item["selected"],
                  title: Text("${item["makanan"]}"),
                  onChanged: (value) {
                    setState(() {
                      item["selected"] = value!;
                    });
                  }),
            ),
            Row(
              children: [
                const Text("Yang dipilih : "),
                ...pilihan.where((e) {
                  return e['selected'] == true;
                }).map((e) {
                  return Text(e["makanan"]);
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
