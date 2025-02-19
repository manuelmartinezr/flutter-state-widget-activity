import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  const W1({super.key, required this.value, required this.onAdd});
  final Function(double) onAdd; // call like this: onPressed: () => onAdd(),
  final double value;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(value.toStringAsFixed(1)),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      onAdd(0.1);
                    },
                    icon: const Icon(Icons.add),
                    key: const Key('W1Add')),
                IconButton(
                    onPressed: () {
                      onAdd(-0.1);
                    },
                    icon: const Icon(Icons.remove),
                    key: const Key('W1Sub'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
