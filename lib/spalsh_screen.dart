import 'package:flutter/material.dart';
import 'package:ujian_morjaah/login_page.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
            child: Image.asset('images/rc-main-logo.png'),
          ),
          const Text('Applikasi Saya'),
          const SizedBox(
            height: 20,
          ),
          const Text('Lorem ipsup'),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
                child: const Text('Continue',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      )),
    );
  }
}
