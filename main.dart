import 'package:flutter/material.dart';
import 'package:recipe_book_simple/screens/home_screen.dart';
import 'package:recipe_book_simple/screens/recipe_detail_screen.dart';
import 'package:recipe_book_simple/screens/start_screen.dart'; // Import the StartScreen

void main() {
  runApp(RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      initialRoute: '/start', // Set the initial route to the StartScreen
      routes: {
        '/start': (context) => const StartScreen(), // Define the StartScreen route
        '/': (context) => const HomeScreen(), // Added const
        '/recipeDetail': (context) => const RecipeDetailScreen(), // Added const
      },
    );
  }
}
