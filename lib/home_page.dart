import 'package:flutter/material.dart';
import 'package:mobx_dice/dice_counter.dart';
import 'package:mobx_dice/dice_counter_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => DiceCounter(),
      child: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('MobX Dice'),
          centerTitle: true,
        ),
        body: DiceCounterView(),
      ),
    );
  }
}
