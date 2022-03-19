import 'package:flutter/material.dart';

void main() => runApp(const heroWidged());

class heroWidged extends StatelessWidget {
  const heroWidged({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pretest 1',
      home: layarPertama(),
    );
  }
}

class layarPertama extends StatelessWidget {
  const layarPertama({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super Idol'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const layarKedua();
          }));
        },
        child: Hero(tag: 'ImageHero', child: SizedBox(
          width: 350,
          height: 350,
          child: Image.network('https://i1.sndcdn.com/artworks-WtprKetUCUTy1egz-VhNMjQ-t500x500.jpg'))),
      ),
    );
  }
}

class layarKedua extends StatelessWidget {
  const layarKedua({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(tag: 'ImageHero', child: Image.network('https://i1.sndcdn.com/artworks-WtprKetUCUTy1egz-VhNMjQ-t500x500.jpg')),
        ),
      ),
    );
  }
}