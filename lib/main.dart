import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
      title: 'Named Route',
      initialRoute: '/',
      routes: {
        '/':(context) => const LayarPertama(),

        '/kedua':(context) => const LayarKedua(),
      },
     )
  );
}

class LayarPertama extends StatelessWidget {
  const LayarPertama({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Pertama'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/kedua');
        }, child: const Text('Buka Layar')),
      ),
    );
  }
}

class LayarKedua extends StatelessWidget {
  const LayarKedua({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Kedua'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text('Kembali')),
      ),
    );
  }
}