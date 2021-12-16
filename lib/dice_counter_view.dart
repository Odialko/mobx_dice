import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_dice/dice_counter.dart';
import 'package:provider/provider.dart';

class DiceCounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<DiceCounter>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: Observer(
                    builder: (_) =>
                        Image.asset('assets/images/dice${store.left}.png'),
                  ),
                  onPressed: store.roll,
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Observer(
                    builder: (_) =>
                        Image.asset('assets/images/dice${store.right}.png'),
                  ),
                  onPressed: store.roll,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Observer(
              builder: (_) => Text(
                'Total ${store.total}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 16,
                    fontFamily: 'Verdana'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
