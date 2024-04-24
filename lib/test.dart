void main() {
  // List<String> pilihan = [
  //   "Nasi Goreng",
  //   "Ayam Goreng",
  //   "Mie Goreng",
  //   "Mie Ayam"
  // ];

  // List<Map<String, dynamic>> pilihan2 = [
  //   {"makanan": "Nasi Goreng", "selected": true},
  //   {"makanan": "Ayam Goreng", "selected": false},
  //   {"makanan": "Mie Goreng", "selected": true},
  //   {"makanan": "Mie Ayam", "selected": false},
  // ];

  // List<Map<String, dynamic>> pilihanFilter = [
  //   ...pilihan2.where((e) {
  //     return e["selected"] == true;
  //   })
  // ];

  // print(pilihan2);
  // print(pilihanFilter.map((e) {
  //   return e["makanan"];
  // }));

  // List pilihanBaru = [];

  // for (int i = 0; i < pilihan.length; i++) {
  //   pilihanBaru.add("Makanan : ${pilihan[i]}");
  // }

  // List pilihanMap = [
  //   ...pilihan.map((e) {
  //     return "Makanan : $e";
  //   })
  // ];

  // print("pilihan : $pilihan");
  // print("pilihanBaru : $pilihanBaru");
  // print("pilihanMap : $pilihanMap");

  print(List.generate(3, (index) => "halo $index"));

  List<String> dataList = ["halo", "halo"];
  Set<String> dataSet = {"halo", "halo", "halo", "halo", "halo", "halo"};
  print(dataList);
  print(dataSet);
}
