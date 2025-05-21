import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of all recipes with added 'favoriteQuote' and 'ingredients' now as List<Map<String, dynamic>>
  // Each ingredient now has 'name' and 'isChecked' properties for the checklist feature.
  // Each step now also includes a 'text' and an optional 'funFact' property.
  final List<Map<String, dynamic>> _allRecipes = [
    {
      'title': 'Carbonara',
      'image':
          'https://www.cookingclassy.com/wp-content/uploads/2020/10/spaghetti-carbonara-01.jpg',
      'ingredients': [
        {'name': '200g Spaghetti', 'isChecked': false},
        {'name': '100g Pancetta or Guanciale', 'isChecked': false},
        {'name': '2 Large Eggs', 'isChecked': false},
        {'name': '50g Pecorino Romano Cheese', 'isChecked': false},
        {'name': 'Black Pepper', 'isChecked': false},
      ],
      'steps': [
        {'text': 'Cook spaghetti according to package directions.', 'funFact': 'Did you know spaghetti means "little strings" in Italian?'},
        {'text': 'While pasta cooks, fry pancetta until crisp. Remove pancetta, leave fat in pan.', 'funFact': 'Pancetta is cured pork belly, similar to bacon but not smoked.'},
        {'text': 'Whisk eggs and Pecorino cheese together in a bowl. Season generously with black pepper.', 'funFact': 'Pecorino Romano is a hard, salty Italian cheese made from sheep\'s milk.'},
        {'text': 'Drain pasta (reserving some pasta water). Add hot pasta to the pan with pancetta fat. Toss to coat.', 'funFact': 'Reserved pasta water helps emulsify the sauce, making it creamy.'},
        {'text': 'Remove pan from heat. Quickly stir in the egg/cheese mixture. Toss rapidly to create a creamy sauce (add reserved pasta water if needed to loosen).', 'funFact': 'The heat from the pasta cooks the eggs, creating a silky sauce, not scrambled eggs!'},
        {'text': 'Stir in cooked pancetta. Serve immediately.', 'funFact': 'Carbonara is traditionally served without cream, relying on eggs, cheese, and pasta water for richness.'}
      ],
      'isFavorite': false,
      'favoriteQuote': 'The secret ingredient is always cheese and a little bit of mystery.',
    },
    {
      'title': 'Chicken Curry',
      'image':
          'https://i.ytimg.com/vi/P0qv_fuGIoo/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCE23gVRXmsN-JQqqgNUB8smEIcBg',
      'ingredients': [
        {'name': '1 tbsp Oil', 'isChecked': false},
        {'name': '1 Onion, chopped', 'isChecked': false},
        {'name': '2 cloves Garlic, minced', 'isChecked': false},
        {'name': '1 tbsp Curry Powder', 'isChecked': false},
        {'name': '500g Chicken Breast, cubed', 'isChecked': false},
        {'name': '400ml Coconut Milk', 'isChecked': false},
        {'name': 'Salt to taste', 'isChecked': false},
        {'name': 'Fresh Cilantro', 'isChecked': false},
      ],
      'steps': [
        {'text': 'Heat oil in a large pan over medium heat.', 'funFact': 'Heating oil properly prevents food from sticking and ensures even cooking.'},
        {'text': 'Add onion and cook until softened (about 5 mins).', 'funFact': 'Onions become translucent and sweet when properly caramelized.'},
        {'text': 'Add garlic and curry powder, cook for 1 minute more until fragrant.', 'funFact': 'Curry powder is a blend of spices, not a single spice!'},
        {'text': 'Add chicken pieces and cook until lightly browned.', 'funFact': 'Browning the chicken adds depth of flavor to the curry.'},
        {'text': 'Pour in coconut milk and bring to a simmer.', 'funFact': 'Coconut milk provides a rich, creamy base for many Asian curries.'},
        {'text': 'Reduce heat, cover, and cook for 15-20 minutes, or until chicken is cooked through.', 'funFact': 'Slow simmering allows flavors to meld beautifully.'},
        {'text': 'Season with salt. Garnish with fresh cilantro before serving.', 'funFact': 'Cilantro is a popular herb in many cuisines, but some people find it tastes like soap!'}
      ],
      'isFavorite': false,
      'favoriteQuote': 'A good curry warms the soul, and maybe wards off bad vibes!',
    },
    {
      'title': 'Classic Pancakes',
      'image':
          'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'ingredients': [
        {'name': '1 1/2 cups All-purpose Flour', 'isChecked': false},
        {'name': '3 1/2 tsp Baking Powder', 'isChecked': false},
        {'name': '1 tsp Salt', 'isChecked': false},
        {'name': '1 tbsp White Sugar', 'isChecked': false},
        {'name': '1 1/4 cups Milk', 'isChecked': false},
        {'name': '1 Egg', 'isChecked': false},
        {'name': '3 tbsp Butter, melted', 'isChecked': false},
      ],
      'steps': [
        {'text': 'In a large bowl, sift together the flour, baking powder, salt, and sugar.', 'funFact': 'Sifting dry ingredients helps make pancakes lighter and fluffier.'},
        {'text': 'Make a well in the center and pour in the milk, egg, and melted butter; mix until just smooth (don\'t overmix).', 'funFact': 'Overmixing pancake batter can lead to tough pancakes due to gluten development.'},
        {'text': 'Heat a lightly oiled griddle or frying pan over medium-high heat.', 'funFact': 'The right griddle temperature is key for golden-brown pancakes.'},
        {'text': 'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake.', 'funFact': 'Using a consistent measure ensures uniform pancake size.'},
        {'text': 'Brown on both sides (cook first side until bubbles appear, then flip). Serve hot with your favorite toppings.', 'funFact': 'Bubbles on the surface indicate the pancake is ready to flip!'}
      ],
      'isFavorite': false,
      'favoriteQuote': 'Start your day with a stack of sunshine and good fortune.',
    },
    {
      'title': 'Simple Tomato Soup',
      'image':
          'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/03/3200x1600/landscape-1453240571-ghk-0216-tomato-soup.jpg?resize=1200:*',
      'ingredients': [
        {'name': '1 tbsp Olive Oil', 'isChecked': false},
        {'name': '1 Onion, chopped', 'isChecked': false},
        {'name': '1 clove Garlic, minced', 'isChecked': false},
        {'name': '800g Canned Crushed Tomatoes', 'isChecked': false},
        {'name': '2 cups Vegetable Broth', 'isChecked': false},
        {'name': '1/2 cup Heavy Cream (optional)', 'isChecked': false},
        {'name': 'Salt and Pepper to taste', 'isChecked': false},
        {'name': 'Basil for garnish', 'isChecked': false},
      ],
      'steps': [
        {'text': 'Heat olive oil in a large pot or Dutch oven over medium heat.', 'funFact': 'Olive oil is a cornerstone of Mediterranean cooking.'},
        {'text': 'Add onion and cook until soft (about 5 mins). Add garlic and cook for 1 more minute.', 'funFact': 'Sautéing onions and garlic creates a flavorful base for many dishes.'},
        {'text': 'Stir in the crushed tomatoes and vegetable broth. Season with salt and pepper.', 'funFact': 'Tomatoes are technically fruits, not vegetables!'},
        {'text': 'Bring to a simmer, then reduce heat and let it cook for at least 10-15 minutes.', 'funFact': 'Simmering allows flavors to deepen and ingredients to soften.'},
        {'text': 'Blend the soup until smooth using an immersion blender or standard blender.', 'funFact': 'Blending creates a creamy texture without adding extra dairy.'},
        {'text': 'Return soup to pot. If using, stir in heavy cream.', 'funFact': 'Cream adds richness and a velvety texture to the soup.'},
        {'text': 'Heat gently and serve hot, garnished with basil.', 'funFact': 'Fresh basil adds a fragrant, aromatic finish to tomato soup.'}
      ],
      'isFavorite': false,
      'favoriteQuote': 'Comfort in a bowl, chasing away the chill with every spoonful.',
    },
  ];

  List<Map<String, dynamic>> _filteredRecipes = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredRecipes = _allRecipes;
  }

  // Method to filter recipes based on search query
  void _filterRecipes(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredRecipes = _allRecipes;
      } else {
        _filteredRecipes = _allRecipes
            .where((recipe) =>
                recipe['title'].toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  // Method to toggle the favorite status of a recipe
  void toggleFavorite(int index) {
    setState(() {
      // Find the actual recipe in _allRecipes to update its favorite status
      // This ensures persistence across filtering
      final recipeTitle = _filteredRecipes[index]['title'];
      final recipeInAllRecipesIndex =
          _allRecipes.indexWhere((recipe) => recipe['title'] == recipeTitle);

      if (recipeInAllRecipesIndex != -1) {
        _allRecipes[recipeInAllRecipesIndex]['isFavorite'] =
            !_allRecipes[recipeInAllRecipesIndex]['isFavorite'];
        // Also update the filtered list for immediate UI refresh
        _filteredRecipes[index]['isFavorite'] =
            _allRecipes[recipeInAllRecipesIndex]['isFavorite'];
      }
    });
  }

  // Method to update the favorite quote after returning from RecipeDetailScreen
  void updateFavoriteQuote(String title, String newQuote) {
    setState(() {
      final recipeIndex =
          _allRecipes.indexWhere((recipe) => recipe['title'] == title);
      if (recipeIndex != -1) {
        _allRecipes[recipeIndex]['favoriteQuote'] = newQuote;
        // Also update in _filteredRecipes if it exists there
        final filteredRecipeIndex =
            _filteredRecipes.indexWhere((recipe) => recipe['title'] == title);
        if (filteredRecipeIndex != -1) {
          _filteredRecipes[filteredRecipeIndex]['favoriteQuote'] = newQuote;
        }
      }
    });
  }

  // Method to update the ingredient checklist status after returning from RecipeDetailScreen
  void updateIngredientChecklist(String title, List<dynamic> updatedIngredients) {
    setState(() {
      final recipeIndex =
          _allRecipes.indexWhere((recipe) => recipe['title'] == title);
      if (recipeIndex != -1) {
        _allRecipes[recipeIndex]['ingredients'] = updatedIngredients;
        // Also update in _filteredRecipes if it exists there
        final filteredRecipeIndex =
            _filteredRecipes.indexWhere((recipe) => recipe['title'] == title);
        if (filteredRecipeIndex != -1) {
          _filteredRecipes[filteredRecipeIndex]['ingredients'] = updatedIngredients;
        }
      }
    });
  }

  // Method to update the steps (including fun facts) after returning from RecipeDetailScreen
  void updateRecipeSteps(String title, List<dynamic> updatedSteps) {
    setState(() {
      final recipeIndex =
          _allRecipes.indexWhere((recipe) => recipe['title'] == title);
      if (recipeIndex != -1) {
        _allRecipes[recipeIndex]['steps'] = updatedSteps;
        // Also update in _filteredRecipes if it exists there
        final filteredRecipeIndex =
            _filteredRecipes.indexWhere((recipe) => recipe['title'] == title);
        if (filteredRecipeIndex != -1) {
          _filteredRecipes[filteredRecipeIndex]['steps'] = updatedSteps;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Cooking Mama-like icon from Icons8
            Image.network(
              'https://img.icons8.com/?size=512&id=102875&format=png',
              height: 40, // Adjust size as needed
              width: 40,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                // Fallback to a placeholder image URL if the primary logo fails to load
                return Image.network(
                  'https://placehold.co/40x40/cccccc/000000?text=Logo',
                  height: 40,
                  width: 40,
                  fit: BoxFit.contain,
                );
              },
            ),
            const SizedBox(width: 8),
            const Text(
              " Mama's Recipe Book",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white), // Text color for AppBar title
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
        elevation: 4,
        shadowColor: Colors.pink[700],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterRecipes,
              style: const TextStyle(color: Colors.white), // Input text color
              decoration: InputDecoration(
                labelText: 'Search Recipes',
                labelStyle:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                prefixIcon: const Icon(Icons.search, color: Colors.pink),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.pink),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.pink, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.pink, width: 2.0),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _filteredRecipes.length,
        itemBuilder: (context, index) {
          final recipe = _filteredRecipes[index];
          return Card(
            margin: const EdgeInsets.all(10.0),
            elevation: 4,
            shadowColor: Colors.pink[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.pink[50], // Light pink background for cards
            child: InkWell(
              onTap: () async {
                // Navigate to RecipeDetailScreen and await the result (updated recipe map)
                final Map<String, dynamic>? updatedRecipe =
                    await Navigator.pushNamed(
                  context,
                  '/recipeDetail',
                  arguments: recipe,
                ) as Map<String, dynamic>?;

                if (updatedRecipe != null) {
                  // Update the favorite quote and ingredient checklist
                  updateFavoriteQuote(
                      updatedRecipe['title'], updatedRecipe['favoriteQuote']);
                  updateIngredientChecklist(
                      updatedRecipe['title'], updatedRecipe['ingredients']);
                  updateRecipeSteps( // Call to update steps with fun facts
                      updatedRecipe['title'], updatedRecipe['steps']);
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      // Recipe Image
                      Image.network(
                        recipe['image'],
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Container(
                            height: 200,
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      (loadingProgress.expectedTotalBytes ?? 1)
                                  : null,
                              color: Colors.pink, // Loading indicator color
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                              child: Icon(Icons.broken_image,
                                  size: 50,
                                  color: Colors
                                      .grey)); // Fallback for image loading error
                        },
                      ),
                      // Favorite Button
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            recipe['isFavorite']
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.pink[300], // Pink color for favorite icon
                          ),
                          onPressed: () {
                            toggleFavorite(index);
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      recipe['title'],
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4A148C), // Deep purple for title
                      ),
                    ),
                  ),
                  // Removed the top-level funFact display as it's now per-step
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  //   child: Text(
                  //     recipe['funFact'],
                  //     style: TextStyle(
                  //       fontSize: 16,
                  //       color: Colors.pink[800], // Darker pink for fun fact
                  //     ),
                  //   ),
                  // ),
                  // Display Favorite Quote if available
                  if (recipe['favoriteQuote'] != null &&
                      recipe['favoriteQuote'].isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow[50], // Light yellow for notebook effect
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.brown[200]!,
                              width: 1), // Light brown border
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Favorite Quote:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown[700], // Dark brown for quote title
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              recipe['favoriteQuote'],
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                color: Colors.brown[600], // Brown for quote text
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
