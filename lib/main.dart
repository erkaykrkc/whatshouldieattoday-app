import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug Banner'i ortadan kaldırır.
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Bugün Ne Yesem ?',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: FoodPage(),
        ),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int soupNumber = 1;
  int foodNumber = 1;
  int desertNumber = 1;
  List<String> soupNames = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuksuyu Çorbası',
    'Düğün Çorbası',
    'Yoğurtlu Çorbası',
  ];

  List<String> foodNames = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  List<String> desertNames = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void RandomGenerator() {
    setState(() {
      //StateFull gövdesinin işlemi yapılması için setState() fonskiyonu kullanmamız gerekiyor.
      soupNumber = Random().nextInt(5) + 1;
      desertNumber = Random().nextInt(5) + 1;
      foodNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: RandomGenerator,
                child: Image.asset('assets/images/corba_$soupNumber.jpg'),
              ),
            ),
          ),
          Text(
            soupNames[soupNumber - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: RandomGenerator,
                child: Image.asset('assets/images/yemek_$foodNumber.jpg'),
              ),
            ),
          ),
          Text(
            foodNames[foodNumber - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: RandomGenerator,
                child: Image.asset('assets/images/tatli_$desertNumber.jpg'),
              ),
            ),
          ),
          Text(
            desertNames[desertNumber - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
