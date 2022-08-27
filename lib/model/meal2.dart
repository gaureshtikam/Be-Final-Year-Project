class Meal2 {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal2(
      {this.mealTime,
        this.name,
        this.imagePath,
        this.kiloCaloriesBurnt,
        this.timeTaken,
        this.preparation,
        this.ingredients});
}

final meals = [

  Meal2(
      mealTime: "BREAKFAST",
      name: "Brown Rice Idli",
      kiloCaloriesBurnt: "255",
      timeTaken: "1hour",
      imagePath: "assets/images/BrownRiceIdli.jpg",
      ingredients: [
        "4 tablespoon oats",
        "5 cup brown rice flour",
        "1/2 cup pressed rice",
        "1 cup urad dal",
        "1 teaspoon fenugreek seed",
        "refined oil as required",
        "salt as required",
        "1 tsp cumin",
        "pinch hing",
        "few curry leaves",
        "2 chilli (finely chopped)",
        "1 inch ginger (finely chopped)",
        "1 onion (finely chopped)",
        "¼ tsp turmeric",
        "¼ tsp salt",
        "2 tbsp coriander (finely chopped)",
        "½ lemon",
      ],
      preparation: '''Step 1
Wash brown rice until water comes out clean. Keep it aside and now in a separate bowl add pressed rice, fenugreek seeds, rice, oats and urad dal. Pour enough water to it and soak for minimum 20 minutes.
Step 2
After 20 minutes, drain the water and transfer them to the grinder jar. Add salt and grind to a paste over high speed for a few seconds. Make sure that the consistency of the batter is neither too thick nor too thin. Transfer to a bowl and keep aside for another 10 minutes.
Step 3
Grease the idli stand with oil and take a ladle full of batter and fill the idli mould. Add water in the idli steamer and place this stand in it. Close the steamer with a lid and let it boil. Let the steam build for 10 minutes before switching off the gas knob.
Step 4
Wait till the steam is released before you take the idli stand out. Now, use a sharp knife to scoop the idlis out and serve warm with coconut chutney and enjoy.

Brown Rice Idli is a South Indian recipe that is very popular in South Indian households. You can consume it in your breakfast or as a sumptuous snack with any chutney of your choice. The best part about this filling dish is that it is prepared using all the fuss free ingredients like oats, brown rice flour, pressed rice, fenugreek seeds and urad dal which are easily available in our kitchen. This delectable snack or breakfast recipe can be served on occasions like pot luck parties, kitty parties, game nights, picnics, road trips in order to beat the sudden hunger pangs. Serve it with coconut chutney and a hot bowl full of sambar in order to relish it more.'''),
  Meal2(
      mealTime: "LUNCH",
      name: "Chickpea Salad",
      kiloCaloriesBurnt: "414",
      timeTaken: "15",
      imagePath: "assets/images/Chickpea-Salad-2-1164x1536.jpg",
      ingredients: [
        "1 can chickpeas, drained",
        "2 medium cucumbers, peeled and diced",
        "8 oz. cherry tomatoes, cut into pieces",
        "1 large bell pepper, diced",
        "¼ medium red onion, diced",
        "¼ cup chopped cilantro",
        "2 tbsp. olive oil",
        "2 tbsp. lemon juice",
        "¾ tsp. sea salt or to taste",
        "¼ tsp. pepper or to taste",
        "⅛ tsp. cayenne (optional, for a touch of heat)",
      ],
      preparation:
      '''1. Dice the tomatoes, cucumbers, and onion. Then chop the cilantro, and add everything to a large mixing bowl. Add the lemon juice, olive oil, chickpeas, salt, pepper, and cayenne pepper(optional) to the bowl and mix well. Serve immediately.
          Tips for the Best Chickpea Salad
1.Rinse the chickpeas. If you are using canned chickpeas for this salad, make sure that you rinse them thoroughly in cold water before adding them in. This cuts the sodium and also makes them easier to digest.
2.Cut the vegetables to the same size. When you dice and chop, keep the cucumber, onion, and tomatoes about the size of the chickpeas. The consistency will make the Chickpea Salad easier to eat, with each bite having a little bit of everything.
3.Season last. Salt brings out the crispness of the veggies, as well as flavors them, but it also draws out the water. Season before serving to taste so the salad is bright and crisp without being soggy.
          Add-ins and Substitutes
1.Add other vegetables. Try this Chickpea Salad with other favorites, like diced celery, olives, bell pepper, or avocado.
2.Add some seeds. For some crunch, try adding pumpkin or sunflower seeds to the salad. Look for ones that are not salted, or adjust your seasoning for them.
3.Substitute a creamy dressing. For a change, make a dressing from vegan mayonnaise and Dijon mustard instead of this oil-based one. This is great for turning your salad into a sandwich.'''),
  Meal2(
      mealTime: "DINNER",
      name: "Mixed sprouts khichdi",
      kiloCaloriesBurnt: "213",
      timeTaken: "20",
      imagePath: "assets/images/Sprout Khicdi.jpg",
      ingredients: [
        "Sprouts - 1 cup",
        "Oil - 2 teaspoons",
        "Cumin seeds - 1 tea spoon",
        "Chopped ginger - 1 tea spoon",
        "Sliced onions - 1 number",
        "Salt - to taste",
        "Curry leaves - 1 springs",
        "Chopped or slit green chillies - 3 numbers",
        "Turmeric powder - pinch",
        "Black pepper - 1/2 tea spoon",
        "Broken wheat daliya - 1 cup",
      ],
      preparation: '''To make Sprout Khichdi
Step 1
In a pressure cooker take some oil and add cumin seeds, finely chopped ginger, sliced onions and salt.Stir it nicely and add curry leaves, chopped or slit green chilies, a pinch of turmeric powder, pepper powder, and daliya.
Step 2
Now add sprouts and mix it thoroughly. Add enough water and cook it with a lid on it for 5 whistles.
Step 3
After 5 whistles switch off the flame and mash it properly.
Step 4
Now take in a bowl and serve hot with coriander leaves, lemon juice or amchur powder on it.'''),
];
