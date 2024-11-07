import 'package:flutter/material.dart';
import 'package:ujian_morjaah/detail_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  List product = [
    Riwayat(name: 'Fahri saputra', email: 'fhrisptra@gmail.com', icon: const Icon(Icons.delete, color: Colors.red,)),
    Riwayat(name: 'Fahri saputra', email: 'fhrisptra@gmail.com', icon: const Icon(Icons.delete, color: Colors.red,)),
    Riwayat(name: 'Fahri saputra', email: 'fhrisptra@gmail.com', icon: const Icon(Icons.delete, color: Colors.red,)),
    Riwayat(name: 'Fahri saputra', email: 'fhrisptra@gmail.com', icon: const Icon(Icons.delete, color: Colors.red,))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => DetailPage(),));
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
                      'Waktu',
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
                      'Riwayat',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Lainnya',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(child: ListView.builder(
                itemCount: product.length,
                itemBuilder: (BuildContext context, int index) {
                  final riwayat = product[index];
                  return Card(
                    child: ListTile(
                      title: Text(riwayat.name),
                      subtitle: Text(riwayat.email),
                      trailing: Icon(Icons.delete,color: Colors.red,),
                    ),
                  );
                },
              ),)
            ],
          ),
        ),
      ),
    );
  }
}

class Riwayat{
  final String name;
  final String email;
   Icon icon;

  Riwayat({required this.name, required this.email, required this.icon});
}