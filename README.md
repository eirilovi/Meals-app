# Meals App

Flutter project designed to help you discover a world of diverse recipes. It caters to various dietary preferences while providing cooking instructions for each meal.


## User stories

- As a user, I want to explore a wide array of meal categories.
- As a user, I want to access detailed meal recipes.
- As a user, I want dietary preferences (e.g., vegan, vegetarian) to be accounted for.
- As a user, I want to search for specific meals.
- As a user, I want to save my favorite meals.
- As a user, I want a convenient navigation drawer offering access to features.
- As a user, I want a stylish dark mode.

## Specifications

Platform: Developed using Flutter for both iOS and Android.
Themes: Supports color theme modes (light and dark).
Data Source: Utilizes dummy data.
Data Models: Utilizes models for meals and categories.
State Management: Utilizes Providers for centralized state management.

## File and Folder Structure

├── lib/
│   ├── data/
│   │   └── dummy_data.dart
│   │
│   ├── models/
│   │   ├── category.dart
│   │   └── meal.dart
│   │
│   ├── providers/
│   │   ├── favorites_provider.dart
│   │   ├── filters_provider.dart
│   │   ├── search_meal.dart
│   │   └── meals_provider.dart
│   │
│   ├── screens/
│   │   ├── categories.dart
│   │   ├── filters.dart
│   │   ├── meal_details.dart
│   │   ├── meals.dart
│   │   └── tabs.dart
│   │
│   ├── widgets/
│   │   ├── category_grid_item.dart
│   │   ├── main_drawer.dart
│   │   ├── meal_item.dart
│   │   ├── meal_item_trait.dart
│   │
│   └── main.dart
│
│
├── pubspec.yaml
└── README.md
```

## 
