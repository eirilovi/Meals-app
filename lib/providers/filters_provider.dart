import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/meals_provider.dart';

/// Enum representing different filtering options for meals.
enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

/// A Riverpod state notifier for managing meal filters.
class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
    Filter.glutenFree: false,
    Filter.lactoseFree: false,
    Filter.vegetarian: false,
    Filter.vegan: false,
  });

  /// Sets the filters to the provided [chosenFilters].
  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  /// Toggles the specified [filter] based on whether it's [isActive].
  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

/// A Riverpod provider for managing meal filters.
final filtersProvider = StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
      (ref) => FiltersNotifier(),
);

/// A Riverpod provider that filters meals based on the active filters.
final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsProvider); // Assuming you have a mealsProvider.
  final activeFilters = ref.watch(filtersProvider);

  return meals.where((meal) {
    if (activeFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
      return false;
    }
    if (activeFilters[Filter.lactoseFree]! && !meal.isLactoseFree) {
      return false;
    }
    if (activeFilters[Filter.vegetarian]! && !meal.isVegetarian) {
      return false;
    }
    if (activeFilters[Filter.vegan]! && !meal.isVegan) {
      return false;
    }
    return true;
  }).toList();
});
