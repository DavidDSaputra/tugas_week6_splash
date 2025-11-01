import 'package:flutter/material.dart';

class IndicatorBar extends StatelessWidget {
  final int current;
  final int total;
  const IndicatorBar({super.key, required this.current, required this.total});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(total, (i) {
      final active = i == current;
      return AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 8,
        width: active ? 28 : 10,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: active
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.primary.withOpacity(0.25),
          borderRadius: BorderRadius.circular(999),
        ),
      );
    });
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: items);
  }
}
