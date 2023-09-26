import 'package:flutter/material.dart';
import 'package:tarea3p5/data/recipe_data.dart';
import 'package:tarea3p5/widgets/recipe_details.dart';

class RecipeCard extends StatelessWidget {
  final RecipeData recipeInfo;

  const RecipeCard({Key? key, required this.recipeInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(16.0), // Adjust the radius as needed
          child: Container(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 250,
                  child: Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(recipeInfo.imagePath),
                  ),
                ),
                CardTitle(recipeData: recipeInfo),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RecipeDetails(info: recipeInfo),
        ));
      },
    );
  }
}

class CardTitle extends StatelessWidget {
  final RecipeData recipeData;

  const CardTitle({Key? key, required this.recipeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0), // Add top padding here
      color: const Color.fromRGBO(0, 0, 0, .4),
      width: MediaQuery.of(context).size.width - 25,
      height: 120, // Increased height to accommodate icons and text
      child: Column(
        children: [
          Text(
            recipeData.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 10), // Add spacing between title and icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.access_time,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(width: 5),
              Text(
                recipeData.time.toString(),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.restaurant_menu,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(width: 5),
              Text(
                recipeData.difficulty,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.attach_money,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(width: 5),
              Text(
                recipeData.affordability,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
