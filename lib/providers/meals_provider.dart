import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/dummy_data.dart';

/// A Riverpod provider that provides a list of meals.
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
