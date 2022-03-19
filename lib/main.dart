import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    title: 'Navigasi',
    home: RutePertama(),
  ));
}

class RutePertama extends StatelessWidget {
  const RutePertama({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rute Pertama'),
      ),
      body: Center(
        child: SizedBox(
          height: 40,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => RuteKedua(), ) );
          }, child: const Text('Buka Halaman Selanjutnya')),
        ),
      ),
    );
  }
}

class RuteKedua extends StatelessWidget {
  const RuteKedua({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rute Kedua'),
      ),
      body: Center(
        child: SizedBox(
          height: 40,
          child: ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: const Text('Kembali Ke Halaman Pertama')),
        ),
      ),
    );
  }
}