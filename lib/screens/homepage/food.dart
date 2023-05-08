import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/meal.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'food_details.dart';


class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);
  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {

  List day1List = [
    {"image" : "assets/images/day1dish1.jpg" , "name" : "Dish 1 " ,  "meal" : "Healthy Fruity Oatmeal" ,
      "ingredients" : '''
• ½ cup oats
• 1 cup water
• 1 tbsp honey
• 1 tbsp vanilla extract
• ½ tsp ground cinnamon
• ¼ cup blueberries
• 4 sliced strawberries
• ½ banana, cut into slices
                             ''' ,
      "recipe" : '''
Combine water and oats in a microwave bowl 
Microwave on high until oats have absorbed the water 
Stir in honey, vanilla extract, and ground cinnamon 
Add the blueberries and top with banana and strawberry slices. Enjoy!
                        '''} ,
    //////////////////////////////////////////////////
    {"image" : "assets/images/day1dish2.jpg" , "name" : "Dish 2 " ,  "meal" : "SMOOTHIE WITH KIWI, ORANGES, AND SPINACH" ,
      "ingredients" : '''
• a large handful spinach
• 2 kiwi pieces
• one mango
• juice one orange ''' ,
    "recipe" : '''
Wash the spinach, cut off the roots.
 Wash the mango and the kiwis,
 then cut into small pieces.
Whisk all ingredients in a blender until smooth.
Enjoy! '''} ,
    ///////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day1dish3.jpg" , "name" : "Dish 3 " ,  "meal" : "SPICY & LIGHT KUNG PAO CHICKEN MEAL PREP" ,
      "ingredients" : '''
• 150 g / 0.3 lb. chicken breast
• 1/6 clove garlic
• 33 g / 1.17 oz snow peas
• 150 g / 5.17 oz bell pepper
• 2/3 tbsp water
• ⅓ tbsp tomato sauce
• 1/6 tbsp fresh ginger
• 1/6 tbsp red chili pepper sauce
• 1/6 tbsp rice vinegar
• chopped green onion ''',
      "recipe" : '''
In a bowl, add ingredients for the sauce and whisk.
Set a skillet over medium heat and spray with olive oil.
When the skillet is hot,
toss in garlic and sear for about 2 minutes.
Then add chopped chicken breasts.
Cook the chicken until the outside of it is seared,
about 6 to 8 minutes.
Toss in chopped bell peppers and sear for about 3 minutes. 
Slowly pour in the sauce and stir frequently. 
Enjoy! '''
    } ,
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day1dish4.jpg" , "name" : "Dish 4 " , "meal" : "MUSHROOM AND SPINACH OMELET" , "ingredients" : '''
• 1 tbsp olive oil
• ½ cup chopped shallots
• 3 garlic cloves, minced
• 1 (8 oz) package sliced white mushrooms
• 1 thyme sprig
• 6 oz fresh baby spinach
• salt
• ground black pepper
• 8 large eggs
''' , "recipe" : '''
Heat a skillet over medium-high heat.
Add oil to the pan.
Add shallots, garlic, mushrooms, and thyme.
Add spinach, sauté until liquid almost evaporates. 
Combine a pinch of salt and pepper,
and 4 eggs in a small bowl, 
stirring with a whisk.
Return pan to medium heat. 
Add egg mixture and cook for 1 minute. 
Lift edges of omelet with a spatula,
tilting pan to roll uncooked egg onto the
bottom of the pan. Enjoy!
'''
    } ,
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day1dish5.jpg" , "name" : "Dish 5 " , "meal" : "SMOKED SALMON GUACAMOLE" , "ingredients" :
    '''
• 1 avocado
• 57 g / 16 oz smoked salmon
• 17 g / 0.6 oz red onion, chopped
• 2 tbsp cilantro, chopped
• 2 tbsp greek yogurt
• pepper''' , "recipe" : '''
Mash up the avocados in a bowl and combine all
the ingredients. Season with mustard, cumin,
lemon juice, Greek yogurt and pepper to taste
Enjoy!'''} ,
    /////////////////////////////////////////////////////////////////
  ];

  List day2List = [
    {"image" : "assets/images/day2dish1.jpg" , "name" : "Dish 1 " , "meal" : "SKINNY FRIED EGG AND AVOCADO TOAST" , "ingredients" : '''
• 2 eggs
• 2 toasted bread slices
• 1 small avocado
• 1 tsp lime juice
• salt
• black pepper
• parsley''' , "recipe" : '''
Prepare toast and fried eggs to personal
preference. Peel and mash avocado with the lime
juice, salt, and pepper. Spread avocado evenly on
each slice of toast then top each with a fried egg
and additional seasonings at your preference.
Enjoy!'''},
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day2dish2.jpg" , "name" : "Dish 2 " , "meal" : "SWEET RED PRE--WORKOUT SMOOTHIE" , "ingredients" :
      '''
• 1 red apple
• ½ beet
• 1 stick celery
• 3 strawberries
• ¼ a banana
• green tea (optional)
• 41g / 1.5 oz raspberries
• 1 tsp ginger (optional)''', "recipe" :
    '''
    Add all ingredients into a blender. Simply blend
for about 1 minute to ensure you remove any
chunks, then blend until smooth. Simply drink as
a snack. Enjoy!'''} ,
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day2dish3.jpg" , "name" : "Dish 3 " , "meal" : "ORANGE HONEY SRIRACHA CHICKEN" , "ingredients" :
      '''
      • 0.1 kg/ 0.25 lb. chicken breast
• 1/8 tbsp sesame oil
• 12.5 g / 0.4 oz Sriracha sauce
• salt
• pepper''', "recipe" : '''
Set your grill or oven to 375°F 190°C. In a
sealable plastic bag, add the contents for the
marinade and mix together well. Taste the
marinade and season it to your liking. Add the
chicken to the marinade and place in the
refrigerator, for at least 30 minutes. Then, take the
chicken from the refrigerator and place it on the
grill. Grill for about 15 to 20 minutes until the
juices from the chicken run clear. Enjoy!'''} ,
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day2dish4.jpg" , "name" : "Dish 4 " , "meal" : "CITRUS HONEY GREEN TEA" , "ingredients" :
      '''
• 1 lemon slice
• 2 teaspoons green tea powder
• 3/4 cup hot water
• ½ cup grapefruit juice
• 3 tbsp lemon juice
• 1 tsp honey''', "recipe" : '''
Stir in the green tea powder and hot water. Add
the grapefruit juice, lemon juice, and honey. Mix
well and serve with a lemon slice. Enjoy!'''} ,
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day2dish5.jpg" , "name" : "Dish 5 " ,  "meal" : "GRILLED SHRIMP & AVOCADO KABOBS" , "ingredients" : '''
• 450 g / 1 lb jumbo shrimp
• 1.5 avocados
• 1 red bell pepper
• 1 orange bell pepper
• 1 yellow bell pepper
• 1 red onion
• 1 tsp garlic paste
• ½ tbsp extra virgin olive oil
• 1 lime
• salt, pepper''' , "recipe" :'''
Set your grill to about 400°F/200°C. Chop veggies
and avocado into large pieces for the kabob. Peel
shrimp and season. Choose fibrous vegetables
as they are more filling and will likely hold well on
a kabob stick under intense heat. Place the
kabobs on the grill and cook for about 8-10
minutes then flip over and cook for another 8 to
10 minutes. Enjoy!'''} ,
  ];

  List day3List = [
    {"image" : "assets/images/day3dish1.jpg" , "name" : "Dish 1 " , "meal" : "SPICED BERRY COBBLER OATMEAL" , "ingredients" :  '''
• 150 g rolled oats, 5.3 oz (cooked)
• 49 g blueberries, 1.8 oz
• 50 g 1.8 oz blackberries
• 3 tbsp chopped walnuts
• ½ tbsp coconut oil
• ¼ tsp turmeric
• ¼ tsp allspice
• 1 packet stevia "In The Raw" brand
• 1 pinch cinnamon
• 1 tbsp granola''', "recipe" :'''
Cook rolled oats as directed. Set aside. Set a
nonstick skillet over medium heat, add coconut
oil. Allow the pan to get hot. Toss in the berries.
Season the berries with a pinch of cinnamon, and
stir. Remove the berries from the heat and allow
the sauce to thicken. Mix very well and add a bit
more cinnamon if desired. Pour the warm berry
syrup on top of the oatmeal. Garnish with fresh
granola to add some crunchiness. Enjoy!'''} ,
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day3dish2.jpg" , "name" : "Dish 2 " , "meal" : "PEACH BANANA" , "ingredients" : '''
    • 1 banana
• 2 peaches
• ½ cup vanilla almond milk
• ½ cup ice cubes
• ¼ tsp cinnamon
• honey (optional)''' , "recipe" :'''
Peel and slice fresh peaches and banana. Pour
all ingredients into a blender. Add honey and
blend to make the smoothie sweeter if desired.
Enjoy!'''} ,
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day3dish3.jpg" , "name" : "Dish 3 " ,  "meal" : "CHICKEN & PINEAPPLE STIR-FRY" , "ingredients" : '''
    • 110 g chicken breasts, 4 oz
• 40 g pineapple, 1.4 oz
• 120 g brown rice, 4.4 oz
• ⅓ tbsp olive oil
• ½ tsp brown mustard
• 1/6 tbsp smoked paprika
• sea salt
• pepper''' , "recipe" :'''Chop the raw chicken breasts into small pieces.
Season the chicken pieces with smoked paprika
and brown mustard. Add olive oil to a skillet then
toss in the chicken breast pieces. Cook for about
4 minutes until the chicken is about 80% finished,
then add chopped bell pepper. Cook for another 2
or 3 minutes before adding the diced pineapple
Enjoy!'''} ,
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day3dish4.jpg" , "name" : "Dish 4 " ,  "meal" : "HERBAL TEA" , "ingredients" :'''
• 1 cup water
• 1 teaspoon grated fresh ginger
• 1 teaspoon grated lime zest
• 1 teaspoon lime juice
• 3 leaves fresh mint'''  , "recipe" :'''
Bring water to a boil in a pot stir in rest of the
ingredients. Cook and stir until tea is infused.
Enjoy!'''} ,
    /////////////////////////////////////////////////////////////////
    {"image" : "assets/images/day3dish5.jpg" , "name" : "Dish 5 " , "meal" : "GRILLED LEMON DIJON CHICKEN THIGHS WITH ARUGULA SALAD" , "ingredients" :'''
    • 4 (4 oz.) skinless, boneless
chicken thighs
• ½ tsp salt
• ¼ tsp ground black pepper
• 2.5 tsp olive oil
• 2 tsp lemon juice
• 1 tsp minced garlic
• cooking spray
• 1 tbsp balsamic vinegar
• 1 tsp honey
• 1 cup grape tomatoes, halved
• 1 (5 oz.) package baby arugula'''  , "recipe" :'''
Sprinkle chicken with ¼ teaspoon salt and 1/8
teaspoon pepper. Combine chicken with 1-1.5
teaspoons oil, lemon juice, mustard, and garlic in
a bowl, toss to coat. Let stand 4 minutes. Heat a
grill pan over medium heat. Coat pan with cooking
spray. Add chicken to pan, grill for 5 minutes on
each side or until done. Cut chicken into ¼-inch-
thick slices. Enjoy!'''} ,
  ];

  List day4List = [
    {"image" : "assets/images/day4dish1.jpg" , "name" : "Dish 1 " , "meal" : "MUSHROOM AND TOMATO OMELET" , "ingredients" :'''
    • 4 eggs whites
• 1 egg
• ½ cup low-fat cottage cheese
• ½ cup sliced mushrooms
• ½ chopped tomato'''  , "recipe" :'''
Combine eggs and beat lightly. Using a cooking
spray, cook eggs in a non-stick pan. Add cottage
cheese, mushrooms and tomatoes in the center
of omelet. Cook until eggs are set and fold over.
Enjoy!'''} ,
    //////////////////////////////
    {"image" : "assets/images/day4dish2.jpg" , "name" : "Dish 2 " , "meal" : "SPINACH SMOOTHIE WITH PEAR AND GINGER" , "ingredients" :  '''
    • 3 cups spinach
• 2 tbsp lemon juice
• 2 tsp ginger
• 2 pears
• mint''', "recipe" :'''
Mix all ingredients in a blender and blend until it
reaches a smooth consistency. Enjoy!'''} ,
    //////////////////////////////
    {"image" : "assets/images/day4dish3.jpg" , "name" : "Dish 3 " , "meal" : "TERIYAKI CHICKEN AND BROCCOLI" , "ingredients" : '''
    • 2 cups broccoli florets
• 1 large chicken breast, diced into cubes
• 1 tablespoon oil
• salt and pepper
• 1 bell pepper, sliced
• 2 cups cooked brown rice
• ¼ cup light soy sauce
• 2 tbsp rice wine vinegar
• 1 garlic clove, minced
• ½ tsp sesame oil
• ¼ teaspoon ground ginger''' , "recipe" :'''
Heat a large pan over medium-high heat. Add
chicken, season with salt and pepper and cook
until no longer pink. Whisk all the ingredients for
the teriyaki sauce in a small bowl. Add the
broccoli florets and bell pepper in the pan. Divide
the chicken and broccoli into 4 meal prep
containers. Sprinkle with sesame seeds and
cover. Enjoy!'''} ,
    //////////////////////////////
    {"image" : "assets/images/day4dish4.jpg" , "name" : "Dish 4 " , "meal" : "GRILLED MEXICAN CORN" , "ingredients" : '''
    • 4 ears corn
• 1.5 cups sour cream
• 1 cup grated parmesan
• 1 lime, juice
• red chili powder
• 2 limes cut into wedges, for garnish''' , "recipe" :'''
Grill the corn turning once on a hot grill until it
starts to get slightly charred. In a small bowl mix
the mayonnaise, sour cream and cilantro.
Squeeze over corn, lime juice and season with
parmesan. Sprinkle with chili powder. Enjoy!'''} ,
    //////////////////////////////
    {"image" : "assets/images/day4dish5.jpg" , "name" : "Dish 5 " ,  "meal" : "CHILI FAJITAS" , "ingredients" :'''
• 1 lb. skinless chicken breast
• ½ green, red, and yellow bell pepper,
thinly sliced
• ⅓ cup water
• 2 tsp soy sauce
• 1 dash salt
• 1 dash black pepper
• 2 tbsp olive oil
• 1 large onion, thinly sliced'''    , "recipe" :'''
Combine all marinade ingredients with the
chicken in a container and refrigerate at least 2
hours. Remove the meat from the marinade and
grill over medium flame for 4-5 minutes on each
side. Cut meat into thin strips. For the sauce,
combine 2 tbsp water, 1 tsp soy sauce, ¼ tsp lime
juice, dash salt, dash black pepper, and 1 tbsp
olive oil. Enjoy!'''} ,
  ];
////////////////////////////2
  List day5List = [
    {"image" : "assets/images/day5dish1.jpg" , "name" : "Dish 1 " ,  "meal" : "FLAXSEED OATMEAL WITH BLUEBERRIES" , "ingredients" :'''
• 3 cups water
• 2 cups rolled oats
• 3 tbsp ground flaxseed
• 1/8 tsp salt
• ¼ cup whole milk
• 1 cup blueberries
• 1 tbsp blueberry preserves
• ½ tsp grated lemon rind
• 1 tbsp lemon juice
• 1½ tablespoons butter'''  , "recipe" :'''
Bring 3 cups of water to a boil. Stir in oats, add
the flaxseed, and salt. Reduce heat to medium-
low, cook until tender, stirring frequently. Stir in
milk and butter. Meanwhile, combine blueberries
and next 4 ingredients in a microwave bowl,
microwave at high for 1.5 minutes, stirring every
30 seconds. Divide oatmeal among 4 bowls. Top
with blueberries and pecans. Enjoy!'''} ,
    {"image" : "assets/images/day5dish2.jpg" , "name" : "Dish 2 " , "meal" : "PINEAPPLE KIWI" , "ingredients" : '''
• 4 tbsp water
• ½ cup milk
• ½ cup yogurt
• 1.5 tbsp honey
• 1 kiwi fruit, peeled
• 1 cup pineapple chunks
• ½2 a mango
• 2 ice cubes''' , "recipe" : '''
Blend all ingredients at low speed until thick and
smooth. Enjoy!'''} ,
    {"image" : "assets/images/day5dish3.jpg" , "name" : "Dish 3 " ,  "meal" : "BBQ CHICKEN-WRAPPED ASPARAGUS" , "ingredients" : '''
    • 2 chicken breasts thinly cut, 3 oz
each piece
• 12 spears asparagus
• 2 tsp bbq sauce 1 pinch
smoked paprika
• 1 pinch garlic powder
• 1 pinch pepper''' , "recipe" :'''
Set oven to 400°F / 200°C. Flatten the chicken
with a mallet. Season chicken cutlets with 1 tbsp
barbecue sauce (for each piece) and your choice
of seasonings. Place the chicken on a grill with
the open facing down. Bake in the oven or smoke
on a grill for about 8 to 10 minutes. Enjoy!'''} ,
    {"image" : "assets/images/day5dish4.jpg" , "name" : "Dish 4 " , "meal" : "GARLIC ROASTED ASPARAGUS WITH PARMESAN" , "ingredients" : '''
• 1 lb. fresh asparagus
• 2 tsp olive oil
• 3 tbsp grated parmesan
• 2 garlic cloves, minced
• salt and pepper''' , "recipe" :'''
Trim the asparagus bottoms. Lay the asparagus
in the pan and season with salt and pepper and
toss in the olive oil. Lay the asparagus on the grill
in a row. Grill for 5-10 minutes over medium heat
until they have char marks and are tender. Enjoy!'''} ,
    {"image" : "assets/images/day5dish5.jpg" , "name" : "Dish 5 " ,  "meal" : "HOMEMADE PESTO WITH SHRIMP & ZUCCHINI PASTA" , "ingredients" : '''
 • 12 g / 3/8 oz fresh basil
• 7.5 g /¼ oz raw spinach
• 7.5 g / 0.3 oz walnuts
• 20 ml / 2.8 fl oz olive oil
• ½ tbsp parmesan
• ¼ lemon juice
• ¼ clove garlic
• salt
• pepper
• 42 g /1.5 oz cooked shrimp
• ¼ zucchini
• 2 cherry tomatoes sliced''' , "recipe" : '''
Blend in a food processor Pesto ingredients until
smooth. In a bowl, julienne raw zucchini linguine
with a spiralizer. Add pesto sauce to zucchini
linguine and lightly toss using tongs. Add your
choice of protein such as grilled shrimp or
chicken, and then add chopped cherry tomatoes.
Enjoy!'''} ,
  ];

  List day6List = [
    {"image" : "assets/images/day6dish1.jpg" , "name" : "Dish 1 " , "meal" : "SPICY GRILLED CHICKEN & EGG SANDWICH" , "ingredients" :'''• 140 g chicken breasts (5 oz), raw
• 1 egg
• 30 g / 1 oz arugula (rocket)
• ½ roma tomato
• 1 tbsp goat cheese
• 1 whole wheat bun
coconut oil spray
• 1 tsp smoked paprika
• ½ tsp cayenne pepper
• salt
• pepper'''  , "recipe" : '''
Season the chicken breast with paprika, cayenne,
cumin, sea salt, and pepper. Place whole wheat
grain bun in a toaster and cook to desired
readiness. Spray a skillet with coconut oil and set
over medium - high heat. Add the chicken breast
to the skillet and cook on both sides until the
chicken breast is completely cooked. Add arugula,
tomato, goat cheese, chicken and then the egg
Enjov!'''} ,
    {"image" : "assets/images/day6dish2.jpg" , "name" : "Dish 2 " , "meal" : "GOLDEN GLOW ELIXIR" , "ingredients" : '''
    • 2 apples
• 4 medium oranges, peel removed
• 1 lemon, peeled
• 2-3 inch knob fresh ginger, peeled
• 2-inch knob fresh turmeric, peeled
• 2 cups cold water
• 1 handful ice''' , "recipe" : '''
In a high-speed blender, blend all ingredients
until smooth, adding extra water it needed. A high
powered decent blender will turn this into a
smooth juice. If you would rather juice the
ingredients to make it even smoother, go right
ahead to keep all the fiber and nutrients in but
juicing the ingredients is just as good. Enjoy!'''} ,
    {"image" : "assets/images/day6dish3.jpg" , "name" : "Dish 3 " , "meal" : "ORANGE HONEY SRIRACHA CHICKEN" , "ingredients" :  '''
    • 0.1 kg/ 0.25 lb. chicken breast
• 1/8 tbsp sesame oil
• 12.5 g / 0.4 oz Sriracha sauce
• salt
• pepper''', "recipe" :'''
Set your grill or oven to 375°F 190°C. In a
sealable plastic bag, add the contents for the
marinade and mix together well. Taste the
marinade and season it to your liking. Add the
chicken to the marinade and place in the
refrigerator, for at least 30 minutes. Then, take the
chicken from the refrigerator and place it on the
grill. Grill for about 15 to 20 minutes until the
juices from the chicken run clear. Enjoy!'''} ,
    {"image" : "assets/images/day6dish4.jpg" , "name" : "Dish 4 " , "meal" : "CITRUS HONEY GREEN TEA" , "ingredients" : '''
    • 1 lemon slice
• 2 teaspoons green tea powder
• 3/4 cup hot water
• ½ cup grapefruit juice
• 3 tbsp lemon juice
• 1 tsp honey''' , "recipe" :'''
Stir in the green tea powder and hot water. Add
the grapefruit juice, lemon juice, and honey. Mix
well and serve with a lemon slice. Enjoy!'''} ,
    {"image" : "assets/images/day6dish5.jpg" , "name" : "Dish 5 " , "meal" : "GRILLED SHRIMP & AVOCADO KABOBS" , "ingredients" :  '''
    • 450 g / 1 lb jumbo shrimp
• 1.5 avocados
• 1 red bell pepper
• 1 orange bell pepper
• 1 yellow bell pepper
• 1 red onion
• 1 tsp garlic paste
• ½ tbsp extra virgin olive oil
• 1 lime
• salt, pepper''', "recipe" :'''
Set your grill to about 400°F/200°C. Chop veggies
and avocado into large pieces for the kabob. Peel
shrimp and season. Choose fibrous vegetables
as they are more filling and will likely hold well on
a kabob stick under intense heat. Place the
kabobs on the grill and cook for about 8-10
minutes then flip over and cook for another 8 to
10 minutes. Enjoy!'''} ,
  ];

  List day7List = [
    {"image" : "assets/images/day7dish1.jpg" , "name" : "Dish 1 " , "meal" : "BISON OMELETTE ROLLUP" , "ingredients" :  '''
• 1 egg
• 3 egg whites
• 110 g / 4 oz lean ground bison
• 30 g raw spinach, 1 oz
• 58 g / 2.1 oz bell pepper
• 14 g / 0.5 oz mozzarella cheese, grated
• garlic powder
• ground cumin
• salt
• pepper''', "recipe" :'''
Season and cook lean bison in a nonstick skillet.
In a bowl, whip eggs together with a pinch of sea
salt and pepper. Set a separate nonstick skillet
over medium-high heat. Pour in egg mixture and
cook like a pancake. Cover the skillet to allow the
egg to be cooked in its entirety. Enjoy!'''} ,
    {"image" : "assets/images/day7dish2.jpg" , "name" : "Dish 2 " ,  "meal" : "PAPAYA" , "ingredients" :'''
    • 2 medium papayas, pitted & chopped
• 1 cup raspberries
• ¼ small pineapple
• ginger
• 1 cup milk
• 2 tbsp greek yogurt
• 1.5 cubes ice
• berries to top'''  , "recipe" :'''
Throw ingredients into a blender. Blend until
smooth. Enjoy!'''} ,
    {"image" : "assets/images/day7dish3.jpg" , "name" : "Dish 3 " , "meal" : "SPICY & LIGHT KUNG PAO CHICKEN MEAL PREP" , "ingredients" :'''
• 150 g / 0.3 lb. chicken breast
• 1/6 clove garlic
• 33 g / 1.17 oz snow peas
• 150 g / 5.17 oz bell pepper
• 2/3 tbsp water
• ⅓ tbsp tomato sauce
• 1/6 tbsp fresh ginger
• 1/6 tbsp red chili pepper sauce
• 1/6 tbsp rice vinegar
• chopped green onion'''  , "recipe" :'''
In a bowl, add ingredients for the sauce and
whisk. Set a skillet over medium heat and spray
with olive oil. When the skillet is hot, toss in garlic
and sear for about 2 minutes. Then add chopped
chicken breasts. Cook the chicken until the
outside of it is seared, about 6 to 8 minutes. Toss
in chopped bell peppers and sear for about 3
minutes. Slowly pour in the sauce and stir
frequently. Enjoy!'''} ,
    {"image" : "assets/images/day7dish4.jpg" , "name" : "Dish 4 " , "meal" : "LAVENDER MINT TEA" , "ingredients" : '''
• ¼ cup fresh lavender petals
• 1 cup fresh mint leaves
• 4 cups water''' , "recipe" : '''
Place lavender petals and mint leaves into a
saucepan, pour water over and bring to a boil.
Turn heat to low and simmer tea until flavor is
your desired strength, 15 to 20 minutes. Enjoy!'''} ,
    {"image" : "assets/images/day7dish5.jpg" , "name" : "Dish 5 " , "meal" : "HEALTHY SHRIMP & VEGGIE PASTA" , "ingredients" : '''
• 170 g/ lb. shrimp
• 1 zucchini
• 2 carrots
• ½ clove garlic chopped
• ¼ red onion chopped
• 1 tbsp low-sodium soy sauce
• ¼ orange juice
• ½ tbsp sesame oil
• 1 tablespoon apple cider vinegar''' , "recipe" :'''
You'll need a Julienne peeler to slice the zucchini
and carrots to make the veggie pasta. Next, add 1
tablespoons of soy sauce. Then, add cider
vinegar and squeeze the juice from ¼ an orange
Lastly, add ½ tbsp of sesame oil. Set a skillet a
medium heat and spray with coconut oil. Toss in
garlic and red onion. Add the shrimp to the skillet
and stir quickly with a spoon to make sure that all
of the shrimp absorbs the flavor of the garlic and
onions. Enjoy!'''} ,
  ];

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
          return SingleChildScrollView(
            child: Container(
              height: 1750,
              width: size.width,
              decoration: const BoxDecoration(
                    gradient:  LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blueGrey,
                        Colors.deepOrangeAccent,
                      ],
                    )
                ),

              child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    const Text('Day One',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                      ),),
                    const SizedBox(height: 10,),
                    SizedBox(
                    height: 180.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: day1List.length,
                      itemBuilder: (context , index) {
                          return CategoryScroller(title: day1List[index]["name"], img: day1List[index]["image"] , mealname: day1List[index]["meal"], ingredients:day1List[index]["ingredients"] , recipe: day1List[index]["recipe"],);
                      },

                    ),),
                    const SizedBox(height: 10,),
                    const Text('Day Two',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                      ),),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 180.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: day1List.length,
                        itemBuilder: (context , index) {
                          return CategoryScroller(title: day2List[index]["name"], img: day2List[index]["image"] , mealname: day2List[index]["meal"], ingredients:day2List[index]["ingredients"] , recipe: day2List[index]["recipe"],);
                        },

                      ),),
                    const SizedBox(height: 10,),
                    const Text('Day Three',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                      ),),
                    const SizedBox(height: 10,),
                    SizedBox(//color: Colors.red,
                      height: 180.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: day1List.length,
                        itemBuilder: (context , index) {
                          return CategoryScroller(title: day3List[index]["name"], img: day3List[index]["image"] , mealname: day3List[index]["meal"], ingredients:day3List[index]["ingredients"] , recipe: day3List[index]["recipe"],);
                        },

                      ),),
                    const SizedBox(height: 10,),
                    const Text('Day Four',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        color: Colors.white
                      ),),
                    const SizedBox(height: 10,),
                    SizedBox(//color: Colors.red,
                      height: 180.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: day1List.length,
                        itemBuilder: (context , index) {
                          return CategoryScroller(title: day4List[index]["name"], img: day4List[index]["image"] , mealname: day4List[index]["meal"], ingredients:day4List[index]["ingredients"] , recipe: day4List[index]["recipe"],);
                        },

                      ),),
                    const SizedBox(height: 10,),
                    const Text('Day Five',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                      ),),
                    const SizedBox(height: 10,),
                    SizedBox(//color: Colors.red,
                      height: 180.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: day1List.length,
                        itemBuilder: (context , index) {
                          return CategoryScroller(title: day5List[index]["name"], img: day5List[index]["image"] , mealname: day5List[index]["meal"], ingredients:day5List[index]["ingredients"] , recipe: day5List[index]["recipe"],);
                        },

                      ),),
                    const SizedBox(height: 10,),
                    const Text('Day Six',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                      ),),
                    const SizedBox(height: 10,),
                    SizedBox(//color: Colors.red,
                      height: 180.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: day1List.length,
                        itemBuilder: (context , index) {
                          return CategoryScroller(title: day6List[index]["name"], img: day6List[index]["image"] , mealname: day6List[index]["meal"], ingredients:day6List[index]["ingredients"] , recipe: day6List[index]["recipe"],);
                        },

                      ),),
                    const SizedBox(height: 10,),
                    const Text('Day Seven',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                      ),),
                    const SizedBox(height: 10,),
                    SizedBox(//color: Colors.red,
                      height: 180.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: day1List.length,
                        itemBuilder: (context , index) {
                          return CategoryScroller(title: day7List[index]["name"], img: day7List[index]["image"] , mealname: day7List[index]["meal"], ingredients:day7List[index]["ingredients"] , recipe: day7List[index]["recipe"],);
                        },

                      ),),

                  ],
                ),
            ),
    );

  }
}

class CategoryScroller  extends StatelessWidget {
  //const ({Key? key})
  final String? title;
  final String? img;
  final String? mealname;
  final String recipe;
  final String ingredients;
  const CategoryScroller({
    Key? key,
    required this.title,
    required this.img,
    required this.mealname,
    required this.recipe,
    required this.ingredients,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,
            Details.routename ,
            arguments: Meal(name: mealname!, recipe: recipe, ingredients: ingredients, img: img! , ));
      },
      child: Container(
        height: 170,
        width: 200,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30),),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 20,
              color: Colors.black,
            ),
          ],
        ),
        margin:const EdgeInsets.only(left: 18 ),
        child: Column(
          children:  [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset( img!,
                height: 100 ,

              ),
            ),
            const SizedBox(height: 20,),
            GradientText(title!,
                style: const TextStyle(color: Colors.blueGrey,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                colors : const [
                  Colors.blueGrey,
                  Colors.deepOrangeAccent
                ]),

          ],
        ),
      ),
    );
  }
}
