class Meal5 {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal5({this.mealTime, this.name, this.imagePath, this.kiloCaloriesBurnt, this.timeTaken, this.preparation, this.ingredients});
}

final meals = [
  Meal5(
      mealTime: "BREAKFAST",
      name: "onion paratha",
      kiloCaloriesBurnt: "158",
      timeTaken: "50",
      imagePath: "assets/images/onionparatha.jpg",
      ingredients: [
        "For Dough:",
        "2 cups wheat flour / atta",
        "¼ tsp salt",
        "1 tsp oil",
        "1 cup water (or as required)",

        "For stuffing:",
        "1 tsp oil",
        "1 cup onions (finely chopped)",
        "½ tsp ginger-garlic paste",
        "½ tsp kashmiri red chilli powder / lal mirch powder",
        "2 tbsp coriander leaves (finely chopped)",
        "½ tsp turmeric / haldi",
        "¼ tsp cumin powder / jeera powder",
        "salt to taste",
        "½ tsp aamchur / dry mango powder",
        "¼ tsp garam masala",
        "ew seeds / ¼ tsp ajwain / caraway",
      ],
      preparation:
      '''Step 1
Firstly, prepare wheat dough and rest for 20 minutes.
Step 2
Meanwhile, preaprae the stuffing by heating a pan with a tsp of oil.
Step 3
Add in 1 cup finely chopped onions and saute for a minute.
Step 4
Also add ½ tsp ginger-garlic paste and continue to saute till the onions turn translucent.
Step 5
Further, turn off the flame and add spices, ½ tsp salt and 2 tbsp coriander leaves.
Step 6
Combine all the ingredients well, and onion paratha stuffing is ready.
Step 7
After dough has rested for 20 minutes, knead the dough slightly.
Step 8
Pinch a ball sized dough, roll about 5 to 5.5 inches in diameter.
Step 9
Place 2 tbsp full of prepared onion stuffing in the center.
Step 10
Take the edge and start pleating bringing to center.
Step 11
Sprinkle some flour and roll to of a chapati size.
Step 12
On a hot tawa place the rolled paratha and cook both sides.
Step 13
Also brush oil / ghee and press slightly.
Step 14
Finally, serve hot onion paratha recipe / pyaaz ka paratha recipe with sauce, raita or pickle.'''),
  Meal5(
      mealTime: "LUNCH",
      name: "Cauliflower & MoongDal Curry+Roti",
      kiloCaloriesBurnt: "97",
      timeTaken: "25",
      imagePath: "assets/images/cauliflowervegetable.jpg",
      ingredients: [
        "For Cauliflower & MoongDal Curry-",
        "1 medium cauliflower (800 gram approx.)",
        "1 and 1/2 cup fried yellow moong dal",
        "1 onion chopped",
        "2 green chilli chopped",
        "2 tsp great ginger",
        "2 tsp grated garlic",
        "1/2 cup chopped tomatoes",
        "1 tsp turmeric powder",
        "As per taste Salt",
        "1 Tbsp cooking oil",
        "1/2 tsp panch phutan (masala)",
        "1 pinch hing powder",
        "1/2 tsp red chilli powder",
        "1/2 tsp cumin powder",
        "1 tsp coriander powder",
        "1/2 tsp garam masala",

        "For Roti-",
        "1/2 cup whole flour",
        "1/2 cup plain flour",
        "2 tbsp milk",
        "salt to taste",
        "1 tsp melted ghee",
        "Whole wheat flour for rolling",
      ],
      preparation:
      '''For Cauliflower & MoongDal Curry-
Step 1
Soak yellow moong dal. Chop Cauliflower. Pressure cook dal and cauliflower with turmeric and salt.
Step 2
In a kadhai heat oil. Add panch phutan and hing. After the phutan splutter, add onion, green chilli and fry till onions, translucent.
Step 3
Add ginger and garlic and saute till rawness goes away. Mix tomatoes and cook till soft and mushy.
step 4
Add 1 Tbsp water to masala and mix rest all dry masala. Saute on low heat till oil separate from masala.
Step 5
Add the masala to the boiled dal and cauliflower and allow to boil. The delicious cauliflower and moong dal is ready to serve with steamed rice/roti.

For Roti-
Step 1
Combine the whole wheat flour, plain flour, milk, salt and ghee in a deep bowl and knead into a semi-soft dough using enough water.
Step 2
Divide the dough into 5 equal portions and roll out each portion of the dough into a 150 mm. (6") diameter circle using a little whole wheat flour for rolling. 
Step 3
Cook each roti very lightly on a hot non-stick tava (griddle) and keep aside.'''),
  Meal5(
      mealTime: "DINNER",
      name: "Bean Soup",
      kiloCaloriesBurnt: "247",
      timeTaken: "30",
      imagePath: "assets/images/beansoup.jpg",
      ingredients: [
        "¼ (16 ounce) package dried navy beans",
        "1 and ¾ cups water",
        "¼ ham bone",
        "½ cups diced ham",
        "1 tablespoons minced onion",
        "½ teaspoon salt",
        "¼ pinch ground black pepper",
        "¼ bay leaf",
        "2 tablespoons sliced carrots",
        "2 tablespoons sliced celery",
      ],
      preparation:
      '''For Bean Soup
Step 1
Place rinsed beans into a large stock pot. Add water and bring to a boil. Boil gently for 2 minutes; remove from heat, cover and let stand for 1 hour.
Step 2
Add ham bone, cubed ham, onion, salt, pepper and bay leaves. Bring to a boil; reduce heat, cover and simmer for 1 hour and 15 minutes or until beans are soft. Occasionally skim surface of soup while it is cooking. 
Step 3
Add carrots and celery, cook until tender. Remove ham bone, scrape any meat from bone and place back into soup and serve..'''),
];
