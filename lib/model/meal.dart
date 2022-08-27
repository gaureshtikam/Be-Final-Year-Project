class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal(
      {this.mealTime,
        this.name,
        this.imagePath,
        this.kiloCaloriesBurnt,
        this.timeTaken,
        this.preparation,
        this.ingredients});
}

final meals = [
  Meal(
      mealTime: "BREAKFAST",
      name: "Poha",
      kiloCaloriesBurnt: "271",
      timeTaken: "20",
      imagePath: "assets/images/Poha.png",
      ingredients: [
        "1.5 cup poha (thick)",
        "1 tsp sugar",
        "¾ tsp salt",
        "¼ tsp turmeric",
        "2 tbsp oil",
        "2 tbsp peanut",
        "1 tsp mustard",
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
Firstly, in a large bowl take 1.5 cup poha. do not take thin poha as it turns mushy as soon as you add water.
Step 2
Rinse in water and drain off the water.
Step 3
Add 1 tsp sugar, ¾ tsp salt and ¼ tsp turmeric.
Step 4
Mix gently using your fingers without making poha mushy.
Step 5
Rest for 8-10 minutes, or until the poha softens without turning mushy or sticky.
Step 6
In a large kadai heat 2 tbsp oil and roast 2 tbsp peanut on low flame.
Step 7
Roast until the peanuts turn crunchy, keep aside.
Step 8
In the same oil, add 1 tsp mustard, 1 tsp cumin, pinch hing and few curry leaves. splutter the tempering.
Step 9
Now add 2 chilli, 1 inch ginger and 1 onion. saute until the onions softens slightly.
Step 10
Further, add ¼ tsp turmeric and ¼ tsp salt. saute slightly.
Step 11
Add soaked poha and mix well combining everything well.
Step 12
Cover and simmer for 3 minutes or unitl the poha is cooked well.
Step 13
Now add fried peanuts, 2 tbsp coriander and ½ lemon. mix well.
Step 14
Finally, enjoy kanda poha recipe with the mixture as a morning breakfast.'''),
  Meal(
      mealTime: "DINNER",
      name: "Rajma Rice",
      kiloCaloriesBurnt: "612",
      timeTaken: "20",
      imagePath: "assets/images/Rajma Rice.jpg",
      ingredients: [
        "1 cup of rajma / red kidney beans",
        "1 cup of rice, cooked",
        "1 large onion, sliced thin",
        "1 tomato, sliced",
        "½ tsp of cumin / jeera",
        "1 piece of Indian cinnamon, powdered",
        "1 piece of ginger, grated",
        "2-3 green chillies, chopped (or ¾ tsp red chilli powder)",
        "¼ tsp of turmeric powder",
        "1 tbsp of coriander powder",
        "1 tsp of amchur (dried mango powder) or use a little tamarind as a substitute",
        "1 tsp of chaat masala",
        "2 tbsp of oil",
        "Salt to taste",
      ],
      preparation: '''For Rajma Rice
Step 1
Soak the rajma (kidney beans) for at least 8 hours or overnight. Pressure cook for 5-6 whistles until soft yet not mushy. Set aside.
Step 2
Heat oil and add the cumin seeds. When they sizzle and begin to change colour, add the onions. When they turn pink, add the powdered cinnamon, ginger, and green chillies. Fry for 2-3 mins.
Step 3
Then add the coriander powder, amchur or tamarind, and turmeric. Mix well and cook for another 3-4 mins. My onion-masala mixture is red because I used red chilli powder instead of green chillies.
step 4
Add the cooked rajma along with the water used to cook it in and the sliced tomato. Mix well and let simmer for 5 mins.
Step 5
When the gravy thickens a bit, add the chaat masala and salt. Mix well, bring to boil again and turn off heat.
Step 6
Add cooked rice and mix gently.
Step 7
Garnish with chopped coriander leaves (cilantro) and serve warm with some plain yogurt.'''),
  Meal(
      mealTime: "SNACK",
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
];
