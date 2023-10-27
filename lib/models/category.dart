import 'package:flutter/material.dart';

/// A class representing a meal category in the meal app.
class Category {
  /// The unique identifier for the category.
  final String id;

  /// The title or name of the category.
  final String title;

  /// The color associated with the category (default is orange).
  final Color color;

  /// Creates a new category instance.
  ///
  /// The [id] and [title] are required, while [color] is optional and defaults
  /// to [Colors.orange] if not provided.
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
