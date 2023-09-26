class RecipeData {
  toogleFavorite() {
    isFavorite = !isFavorite;
  }

  final String title;
  final int time;
  final String difficulty;
  final String affordability;
  final String imagePath;
  final List<String> ingredients;
  final List<String> steps;
  bool isFavorite = false;

  RecipeData(
      {required this.title,
      required this.time,
      required this.difficulty,
      required this.affordability,
      required this.imagePath,
      required this.ingredients,
      required this.steps});
}

var recipeDummyData = [
  RecipeData(
      title: "Spaghetti with Tomato Sauce",
      time: 20,
      difficulty: "Simple",
      affordability: "Afforable",
      imagePath: "lib/assets/spaghetti.jpeg",
      ingredients: [
        "4 tomatoes",
        "1 Tablespoon of olive oil",
        "1 onion",
        "250g spaghetti",
        "Spices",
        "Cheese (optional)"
      ],
      steps: [
        "Cut the tomatoes and the onion into small pieces",
        "Boil the water - add the salt to it once it boils",
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish.'
      ]),
  RecipeData(
      title: "Toast Hawaii",
      time: 10,
      difficulty: "Simple",
      affordability: "Afforable",
      imagePath: "lib/assets/hawaii-toast.jpg",
      ingredients: [
        '1 Slice White Bread',
        '1 Slice Ham',
        '1 Slice Pineapple',
        '1-2 Slices of Cheese',
        'Butter'
      ],
      steps: [
        'Butter one side of the white bread',
        'Layer ham, the pineapple and cheese on the white bread',
        'Bake the toast for round about 10 minutes in the oven at 200°C'
      ]),
  RecipeData(
      title: "Hamburger with fries",
      time: 45,
      difficulty: "Simple",
      affordability: "¨Pricey",
      imagePath: "lib/assets/cheeseburger.jpeg",
      ingredients: [
        '300g Cattle Hack',
        '1 Tomato',
        '1 Cucumber',
        '1 Onion',
        'Ketchup',
        '2 Burger Buns'
      ],
      steps: [
        'Form 2 patties',
        'Fry the patties for c. 4 minutes on each side',
        'Quickly fry the buns for c. 1 minute on each side',
        'Bruch buns with ketchup',
        'Serve burger with tomato, cucumber and onion'
      ]),
  RecipeData(
      title: "Chilaquiles",
      time: 60,
      difficulty: "Intermediate",
      affordability: "Afforable",
      imagePath: "lib/assets/chilaquilles.jpg",
      ingredients: [
        "4 tomatoes",
        "1 Tablespoon of olive oil",
        "1 onion",
        "10 corn tortillas",
        "Queso",
        "Salsa"
      ],
      steps: [
        "Cut the tortillas and fry them",
        "Make salsa and blend it. Pour over chilaquilles"
            "Add cheese"
      ]),
  RecipeData(
      title: "Molletes",
      time: 25,
      difficulty: "Simple",
      affordability: "Afforable",
      imagePath: "lib/assets/molletes.jpg",
      ingredients: ["Bollio", "Frijoles", "Queso", "Salsa Mexicana"],
      steps: ["Slice bollio and heat up with beans and cheese", "Add salsa"]),
];
