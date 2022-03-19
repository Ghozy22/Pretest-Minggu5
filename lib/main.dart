import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pretest5'),
      ),
      body:  const Center(
        child: SelectionButton(),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  const SelectionButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigate(context);
      }, child: const Text('Pilihlah Sesuai Keinginan Anda'),
    );
  }

  void _navigate(BuildContext context) async {
    final hasil = await Navigator.push(context, MaterialPageRoute(builder: (context) =>  const halamanKedua(),));

    ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$hasil')));
  }

}

class halamanKedua extends StatelessWidget {
  const halamanKedua({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kedua'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context, 'Selamat Malam');
              }, child: const Text('Selamat Malam.')),
            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context, 'Semoga Harimu Menyenangkan');
              }, child: const Text('Semoga Harimu Menyenangkan.')),
            )
          ],
        ),
      ),
    );
  }
}