import 'package:flutter/material.dart';

import 'Page1.dart';

import 'Page2.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter_Task3',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.white12,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(
                  width: 200,
                  child: Text(
                    'ホーム',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Icon(Icons.search, color: Colors.white),
              ],
            ),
          ),

          const Padding(padding: EdgeInsets.all(10)),

          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'あなたへのおすすめ',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Icon(Icons.keyboard_arrow_right, color: Colors.white),
              ],
            ),
          ),

          const Padding(padding: EdgeInsets.all(10)),

          SizedBox(
            height: 220,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                const Padding(padding: EdgeInsets.all(5)),
                SizedBox(
                  width: 160,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page1(),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('images/ziburi_1.jpeg'),
                        const Text(
                          'スタジオジブリ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        const Text(
                          '魔女の宅急便',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const Padding(padding: EdgeInsets.all(5)),
                SizedBox(
                  width: 160,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page2(),
                        ),
                      );
                    },

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('images/ziburi_2.jpeg'),
                        const Text(
                          'スタジオジブリ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        const Text(
                          'もののけ姫',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const Padding(padding: EdgeInsets.all(5)),
                SizedBox(
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/ziburi_3.jpeg'),
                      const Text(
                        'スタジオジブリ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      const Text(
                        '千と千尋の神隠し',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                const Padding(padding: EdgeInsets.all(5)),
                SizedBox(
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/ziburi_4.jpeg'),
                      const Text(
                        'スタジオジブリ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      const Text(
                        '風の谷のナウシカ',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                const Padding(padding: EdgeInsets.all(5)),
                SizedBox(
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/ziburi_5.jpeg'),
                      const Text(
                        'スタジオジブリ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      const Text(
                        'ハウルの動く城',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                const Padding(padding: EdgeInsets.all(5)),
                SizedBox(
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/ziburi_6.jpeg'),
                      const Text(
                        'スタジオジブリ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      const Text(
                        '猫の恩返し',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'カテゴリー',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Icon(Icons.keyboard_arrow_right, color: Colors.white),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1/2,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  alignment: const Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.9, 0.0),
                      colors: [
                        Colors.white,
                        Colors.black,
                      ],
                    ),
                  ),
                  child:  const Text(
                    'クラシック',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  alignment: const Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.9, 0.0),
                      colors: [
                        Colors.blue,
                        Colors.purple,
                      ],
                    ),
                  ),
                  child:  const Text(
                    'カントリー',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  alignment: const Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.9, 0.0),
                      colors: [
                        Colors.green,
                        Colors.greenAccent,
                      ],
                    ),
                  ),
                  child:  const Text(
                    'ポップ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  alignment: const Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.9, 0.0),
                      colors: [
                        Colors.red,
                        Colors.orange,
                      ],
                    ),
                  ),
                  child:  const Text(
                    'ロック',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  alignment: const Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.9, 0.0),
                      colors: [
                        Colors.purpleAccent,
                        Colors.pinkAccent,
                      ],
                    ),
                  ),
                  child:  const Text(
                    'メタル',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  alignment: const Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.9, 0.0),
                      colors: [
                        Colors.red,
                        Colors.blueAccent,
                      ],
                    ),
                  ),
                  child:  const Text(
                    'レゲエ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  alignment: const Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.9, 0.0),
                      colors: [
                        Colors.blueAccent,
                        Colors.cyan,
                      ],
                    ),
                  ),
                  child:  const Text(
                    '邦楽',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  alignment: const Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.9, 0.0),
                      colors: [
                        Colors.black,
                        Colors.white,
                      ],
                    ),
                  ),
                  child:  const Text(
                    '洋楽',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 70))
        ],
      ),
    );
  }
}