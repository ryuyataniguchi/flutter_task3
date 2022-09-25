import 'dart:ffi';

import 'package:flutter/material.dart';



class Page2 extends StatelessWidget {

  bool click = true ;

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
          Row(
            children: [
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(left: 50),
                  height: 300,
                  width: 250,
                  color: Colors.white,
                  child: Image.asset(
                    'images/ziburi_1.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 300,
                width: 5,
                color: Colors.black,
              ),
              Container(
                height: 300,
                width: 40,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 40,
                      child: Image.asset(
                        'images/ziburi_2.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 40,
                      child: Image.asset(
                        'images/ziburi_3.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 40,
                      child: Image.asset(
                        'images/ziburi_4.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 40,
                      child: Image.asset(
                        'images/ziburi_5.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 40,
                      child: Image.asset(
                        'images/ziburi_6.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(20)),

          const Center(
            child: Text(
              '魔女の宅急便',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Center(
            child: Text(
              'スタジオジブリ',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white38,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(20)),

          Slider(
            value: 0,
            onChanged: (value) {},
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
          ),

          const Padding(padding: EdgeInsets.all(20)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                  size: 50,
                ),
              ),


              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.skip_next,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}