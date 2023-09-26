import 'package:flutter/material.dart';
import 'package:tarea3p5/widgets/recipe_card.dart';
import 'package:tarea3p5/data/recipe_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quick & Easy',
          style: TextStyle(color: Color.fromARGB(255, 247, 234, 224)),
        ),
        backgroundColor: Color.fromARGB(255, 40, 37, 37),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: recipeDummyData.length,
          itemBuilder: (BuildContext context, int index) {
            return RecipeCard(recipeInfo: recipeDummyData[index]);
          }),
    );
  }
}
