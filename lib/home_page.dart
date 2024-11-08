import 'package:flutter/material.dart';
import 'package:ujian_morjaah/detail_page.dart';
import 'package:ujian_morjaah/halaman_input.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List product = [
    Riwayat(
        name: 'Fahri saputra',
        kegiatan: 'Main Bola',
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
        )),
    Riwayat(
        name: 'Fahri saputra',
        kegiatan: 'Makan',
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
        )),
    Riwayat(
        name: 'Fahri saputra',
        kegiatan: 'Tidur',
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ));
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
        leading: const Icon(Icons.menu),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 450,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      'Waktu/Jam',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'ToDos',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Lainnya',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: product.length,
                  itemBuilder: (BuildContext context, int index) {
                    final riwayat = product[index];
                    return Card(
                      child: ListTile(
                        title: Text(riwayat.name),
                        subtitle: Text(riwayat.kegiatan),
                        trailing: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){      
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => HalamanInput(),));
      }, child: const Icon(Icons.add),),
    );
  }
}

class Riwayat {
  final String name;
  final String kegiatan;
  Icon icon;

  Riwayat({required this.name, required this.kegiatan, required this.icon});
}
