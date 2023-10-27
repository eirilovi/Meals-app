/// Enum representing the complexity of a meal.
enum Complexity {
  simple,
  challenging,
  hard,
}


/// Enum representing the affordability of a meal.
enum Affordability {
  affordable,
  pricey,
  luxurious,
}

/// A class representing a meal in the meal app.
class Meal {
  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.reviews,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final List<Review> reviews;
}

class Review {
  final String userId;
  final String text;
  final double rating;

  const Review({
    required this.userId,
    required this.text,
    required this.rating,
  });
}