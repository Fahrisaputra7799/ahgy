import 'package:flutter/material.dart';
import 'package:ujian_morjaah/home_page.dart';

class DetailPage extends StatelessWidget {
        DetailPage({super.key});


  List notifikasi = [
    Notif(name: 'Fahri', email: 'Woi', icon: Icon(Icons.delete))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => HomePage(),));
        }, icon: const Icon(Icons.arrow_back)),
      ),
      body: ListView.builder(
        itemCount: notifikasi.length,
        itemBuilder: (BuildContext context, int index) {
          final notif = notifikasi[index];
          return Card(
            child: ListTile(
              title: Text(notif.name),
              subtitle: Text(notif.email),
              trailing: ElevatedButton(onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Buka',
              style: TextStyle(
                color: Colors.white
              ),
              )),
            ),
          );
        },
      ),
    );
  }
}

class Notif{
  final String name;
  final String email;
   Icon icon;

  Notif({required this.name, required this.email, required this.icon});
}