import 'dart:math';

import 'package:flutter/material.dart';

void main() {
    runApp(
        MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.lightBlue[900],
                appBar: AppBar(
                    title: const Text(
                        'Jogo de Dados',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                        ),
                    ),
                    backgroundColor: Colors.indigo[900],
                ),
                body: const DicePage(),
            ),
        ),
    );
}

class DicePage extends StatefulWidget {
    const DicePage({Key? key}) : super(key: key);

    @override
    State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
    int leftDiceNumber = 1;
    int rightDiceNumber = 2;

    changeDices() {
        setState(() {
            leftDiceNumber = Random().nextInt(6) + 1;
            rightDiceNumber = Random().nextInt(6) + 1;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Center(
            child: Row(
                children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                      )
                                  ),
                              ),
                              child: Image.asset('images/Dice-$leftDiceNumber.png'),
                              onPressed: () {
                                  changeDices();
                              },
                          ),
                        ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                      )
                                  ),
                              ),
                              child: Image.asset('images/Dice-$rightDiceNumber.png'),
                              onPressed: () {
                                  changeDices();
                              },
                          ),
                        ),
                    ),
                ],
            ),
        );
    }
}
