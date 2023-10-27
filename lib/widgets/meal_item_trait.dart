import 'package:flutter/material.dart';

/// A widget that displays an icon and label as a trait for a meal item.
class MealItemTrait extends StatelessWidget {
  /// Constructor for the MealItemTrait.
  const MealItemTrait({
    Key? key,
    required this.icon,
    required this.label,
  });

  /// The icon to display as a trait.
  final IconData icon;

  /// The label associated with the trait.
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 17,
        color: Colors.white,
      ),
      const SizedBox(width: 6),
      Text(
        label,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ]);
  }
}
