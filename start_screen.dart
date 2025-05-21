import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome to Mama's Recipe Book",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFF5F5DC), // Cream color
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF4A148C), // Deep purple
      ),
      body: Stack(
        children: [
          // Background image
          Image.network(
            "https://t3.ftcdn.net/jpg/03/74/84/46/360_F_374844688_iNWXZGjSSHs8DKk4YTNNzeLjxEvMngYL.jpg", // Detective background image
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[200], // Fallback background color
                width: double.infinity,
                height: double.infinity,
                child: const Center(
                  child: Icon(Icons.broken_image, size: 100, color: Colors.grey),
                ),
              );
            },
          ),
          // Content overlay
          Container(
            color: Colors.black.withOpacity(0.5), // Dark overlay for readability
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // App Logo (using an internet link for a cooking mama-like image)
                  Image.network(
                    'https://press-start.com.au/wp-content/uploads/2019/08/Cooking-Mama.jpg', // Cooking Mama-like icon
                    height: 150, // Slightly increased size for prominence
                    width: 150,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.restaurant_menu,
                          size: 120, color: Colors.white); // Fallback icon
                    },
                  ),
                  const SizedBox(height: 20),
                  // App Title
                  const Text(
                    "Mama's Recipe Book",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  // About the App Section
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: const [
                        Text(
                          "Your personal culinary companion!",
                          style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            color: Color(0xFF5D4037), // Dark brown
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Discover, organize, and cherish your favorite recipes. From quick meals to gourmet dishes, Mama's Recipe Book helps you keep track of every delicious creation.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF212121), // Very dark gray
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Version: 1.0.0",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  // User Buttons
                  SizedBox(
                    width: double.infinity, // Make button full width
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/'); // Navigate to HomeScreen
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink[300], // Pink button
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity, // Make button full width
                    child: OutlinedButton(
                      onPressed: () {
                        // Show About Us dialog
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white.withOpacity(0.95),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(color: Colors.pink[100]!, width: 2),
                              ),
                              title: const Text(
                                'About Mama\'s Recipe Book',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4A148C), // Deep purple
                                ),
                              ),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Mama\'s Recipe Book is designed to be your go-to app for all things culinary. It allows you to browse delicious recipes, mark your favorites, keep track of ingredients with a handy checklist, and even jot down your favorite quotes about each dish.',
                                      style: TextStyle(fontSize: 16, color: Color(0xFF212121)),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      'About the Developer:',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color(0xFF5D4037), // Dark brown
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      "This app was developed by Kurt Justine V. Ramos of First Year BSCS, 'This application was inspired by my Grandmother's love for cooking yummy and healthy food dishes. however, due to her aging she tends to forget some ingridients or two, this application's main purpose is to help people like her that aspires to feed her family healthy food everyday.",
                                      style: TextStyle(fontSize: 16, color: Color(0xFF212121)),
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      '© ${DateTime.now().year} TuckerXHiro corp. All rights reserved.',
                                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Close',
                                    style: TextStyle(color: Colors.pink[300]),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: BorderSide(color: Colors.pink[100]!, width: 2),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'About Us', // Changed text to "About Us"
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
