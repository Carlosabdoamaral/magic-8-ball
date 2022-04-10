import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String answer = "Press the button to start";

  @override
  Widget build(BuildContext context) {
    void _getAnswer() {
      // 0 - SIM
      // 1 - NÃO
      // 2 - NÃO SEI
      int x = Random().nextInt(3);

      setState(() {
        answer = "I'm thinking...";
      });

      new Timer(
        const Duration(seconds: 1),
        () => {
          if (x == 0)
            {
              setState(() {
                answer = 'Yes';
              }),
            }
          else if (x == 1)
            {
              setState(() {
                answer = 'No';
              }),
            }
          else
            {
              setState(() {
                answer = "I'm not sure";
              }),
            },
        },
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(child: Image.asset('images/bot.png')),
              Container(
                height: 300,
                width: double.infinity,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 90,
                      height: 8,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 240,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hey! Ask me something and I will answer you with yes or no",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.black45),
                          ),
                          Text(
                            answer,
                            style: TextStyle(
                              fontFamily: 'Poppins Regular',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87
                            ),
                          ),
                          FloatingActionButton.extended(
                            onPressed: () {
                              _getAnswer();
                            },
                            tooltip: "Get answer from the bot",
                            backgroundColor: Colors.lightBlueAccent,
                            label: Text("Get answer"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
