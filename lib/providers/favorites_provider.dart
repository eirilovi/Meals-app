import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/meal.dart';

/// A Riverpod state notifier that manages a list of favorite meals.
class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  /// Initializes the `FavoriteMealsNotifier` with an empty list.
  FavoriteMealsNotifier() : super([]);

  /// Toggles the favorite status of a meal.
  ///
  /// If the provided [meal] is in the list of favorite meals, it is removed.
  /// If not, the [meal] is added to the list of favorite meals.
  ///
  /// Returns `true` if the meal's favorite status was toggled to 'favorite,' and
  /// `false` if it was toggled to 'not favorite.'
  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

/// A Riverpod provider for managing the list of favorite meals.
final favoriteMealsProvider =
StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
