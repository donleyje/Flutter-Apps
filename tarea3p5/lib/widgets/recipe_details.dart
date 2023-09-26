import 'package:flutter/material.dart';
import 'package:tarea3p5/data/recipe_data.dart';

class RecipeDetails extends StatefulWidget {
  final RecipeData info;

  const RecipeDetails({Key? key, required this.info}) : super(key: key);

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  bool isStarButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.info.title,
          style: const TextStyle(color: Color.fromARGB(255, 247, 234, 224)),
        ),
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 247, 234, 224)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 40, 37, 37),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isStarButtonClicked = !isStarButtonClicked;
              });

              String inFavs = isStarButtonClicked ? "" : " removed from";
              String msg = "Meal$inFavs in favs";

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(msg),
                  backgroundColor: const Color.fromARGB(255, 247, 234, 224),
                ),
              );
            },
            icon: Icon(
              Icons.star,
              color: isStarButtonClicked
                  ? const Color.fromARGB(255, 245, 171, 97)
                  : const Color.fromARGB(255, 247, 234, 224),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image(
            image: AssetImage(widget.info.imagePath),
          ),
          SizedBox(height: 10),
          const Subtitle(subtitle: "Ingredients"),
          Details(details: widget.info.ingredients),
          SizedBox(height: 15),
          const Subtitle(subtitle: "Steps"),
          Details(
            details: widget.info.steps,
          )
        ]),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  final String subtitle;
  const Subtitle({Key? key, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(
          color: Color.fromARGB(255, 245, 171, 97),
          fontSize: 23,
          fontWeight: FontWeight.w400),
    );
  }
}

class Details extends StatelessWidget {
  final List<String> details;
  const Details({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: details.length,
      itemBuilder: (context, index) => Container(
        alignment: Alignment.topCenter,
        child: Text(
          details[index],
          style: const TextStyle(
            color: Color.fromARGB(255, 247, 234, 224),
          ),
        ),
      ),
    );
  }
}
