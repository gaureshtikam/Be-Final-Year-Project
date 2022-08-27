class Meal3 {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal3(
      {this.mealTime,
        this.name,
        this.imagePath,
        this.kiloCaloriesBurnt,
        this.timeTaken,
        this.preparation,
        this.ingredients});
}

final meals = [
  Meal3(
      mealTime: "BREAKFAST",
      name: "PeanutButter Sandwich ",
      kiloCaloriesBurnt: "442",
      timeTaken: "15",
      imagePath: "assets/images/PeanutButter Banana Sandwiches.jpg",
      ingredients: [
        "2 Whole Wheat Brown Bread ",
        "1 Ripe Bananas , sliced into rounds",
        "1/2 teaspoon Cinnamon Powder (Dalchini)",
        "1 tablespoon Peanut Butter",
      ],
      preparation: '''Step 1
To begin making the Peanut Butter Banana Sandwich Recipe, all you have to do is get all the ingredients and keep them aside.
Step 2
To make the non grilled version of the peanut butter banana sandwich; spread the peanut butter onto one side of the bread. Make sure the peanut butter is at room temperature, otherwise your bread might tear. 
Step 3
Place the banana slices onto the peanut buttered side of the slice. Sprinkle the cinnamon powder on the top.
Step 4
Place the other slice of bread on the top and press together firmly with your palms. You can choose to slice the edges off and then cut half diagonally and serve.
Step 5
To grill the sandwich; make a sandwich like above and place it over a Panini Press Or a Sandwich Maker and grill until crisp. 
Step 6
Serve Peanut Butter Banana Sandwich Recipe.'''),
  Meal3(
      mealTime: "LUNCH",
      name: "Soyabean curry",
      kiloCaloriesBurnt: "244",
      timeTaken: "40",
      imagePath: "assets/images/soya-bean-recipe.jpeg",
      ingredients: [
        "For masala paste:",
        "2 tsp oil",
        "1 onion (thinly sliced)",
        "3 cloves garlic",
        "1 inch ginger",
        "2 tomato (finely chopped)",
        "8 whole cashews",
        "Other ingredients:",
        "2 cups soya chunks",
        "3 tsp oil",
        "1 tsp cumin seeds / jeera",
        "1 bay leaf / tej patta",
        "½ tsp turmeric powder / haldi",
        "1 inch cinnamon stick / dalchini",
        "1 onion (finely chopped)",
        "salt to taste",
        "1 tsp kashmiri chilli powder / lal mirch powder",
        "1 tsp coriander powder / dhaniya powder",
        "¼ cup curd / yogurt",
        "1 cup water",
        "1 tsp kasuri methi / dry fenugreek leaves (Crushed)",
        "¼ tsp garam masala",
      ],
      preparation: '''Soya chunks cooking recipe:
Step 1
Firstly, boil soya chunks for 8 minutes and transfer to a bowl of cold water.
Step 2
Allow to rest for 10 minutes and squeeze completely.

Masala paste recipe:
Step 1
Firstly, heat kadai and add oil and saute onion, ginger and garlic.
step 2
Also add tomatoes, cashews and saute well.
Step 3
Blend to smooth paste. keep aside.

Soya chunks curry recipe:
Step 1
Firstly, in a large kadai heat oil.
Step 2
Further, add cumin, bay leaf, cinnamon stick and saute till they turn aromatic.
Step 3
Then add finely chopped onions and saute till they turn slightly golden in colour.
Step 4
Also add chilli powder and turmeric powder and saute. adding chilli powder directly to oil gives rich red colour.
Step 5
Now add prepared onion-tomato masala paste and saute well.
Step 6
Saute well for atleast 5 miunutes till the raw smell of masala goes away.
Step 7
Additionally add coriander powder and salt. continue to saute for a minute or more.
Step 8
Furthermore, add 1 cup of water or as desired to adjust the consistency of curry.
Step 9
Immediately add quarter cup of whisked fresh curd. make sure to lower the flame else curd might curdle.
Step 10
Further mix well making sure the curd has blended well with masala.
Step 11
Also add squeezed soya and mix well.
Step 12
Cover the kadai and simmer for 10 minutes.
Step 13
Later add crushed kasuri methi leaves and garam masala. give a good mix.
Step 14
Finally, mix well and serve with chapathi, rotis or steamed rice.'''),
  Meal3(
      mealTime: "DINNER",
      name: "Red LentilDal with Rice",
      kiloCaloriesBurnt: "213 ",
      timeTaken: "45",
      imagePath: "assets/images/Red-Lentil-Dal-Rice.jpg",
      ingredients: [
        "3 tablespoons unsalted butter",
        "1 large onion, finely chopped",
        "Salt",
        "2 garlic cloves, minced",
        "1 tablespoon finely grated peeled fresh ginger",
        "1 tablespoon black mustard seeds",
        "1 tablespoon ground cumin",
        "1 teaspoon ground turmeric",
        "1/2 teaspoon cayenne pepper",
        "2 cups (15 ounces) red lentils (masur dal), rinsed and drained",
        "1 tablespoon cumin seeds",
        "1/4 cup fresh curry leaves, chopped (optional; see Note)",
        "Freshly ground pepper",
        "Steamed basmati rice, chopped cilantro, tomatoes and serrano chile, lime wedges and Greek yogurt, for serving ",
      ],
      preparation: '''For Red Lentil Dal with Rice
Step 1
In a large enameled cast-iron casserole, melt 1 tablespoon of the butter over moderately high heat. Add the onion, season with salt and cook, stirring occasionally, until golden, about 5 minutes. Add the garlic and ginger and stir for 30 seconds, until fragrant. Stir in the mustard seeds, ground cumin, turmeric and cayenne. Add the red lentils and stir to coat with the spices and aromatics. Add 5 cups of water and bring to a boil. Cover partially and simmer over moderately low heat, stirring occasionally, until the lentils break down to a puree, about 25 minutes. (If the lentils become dry before they’re tender, add water 1/2 cup at a time and continue simmering).      
Step 2
In a small skillet, melt the remaining 2 tablespoons of butter over moderate heat. Add the cumin seeds and curry leaves and stir for 30 seconds, until fragrant. Remove from the heat.
Step 3
Season the dal with salt and pepper. Transfer to a serving bowl and top with the cumin seed butter. Serve with rice, chopped cilantro, tomatoes and chile, lime wedges and yogurt.'''),
];
