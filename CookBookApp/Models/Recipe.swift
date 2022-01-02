//
//  Recipe.swift
//  CookBookApp
//
//  Created by Roman Zhukov on 03.01.2022.
//

struct Recipe {
    let name: String
    let descriprion: String
    let photo: String
    let mainFood: Food
    let time: String
    
    static func getRecipes() -> [Recipe] {
        [
            Recipe(name: "Gourmet Chicken Sandwich",
                   descriprion: "Step 1 Sprinkle pepper on one side of each chicken cutlet. Heat oil in a large skillet; brown garlic in oil, then add chicken, pepper-side-down. Saute chicken until cooked through and juices run clear, about 12 to 15 minutute. Step 2 In a small bowl combine the mayonnaise, mustard and rosemary. Mix together and spread mixture on 4 slices focaccia bread. Place 1 chicken cutlet on each of these slices, then top each with another bread slice.",
                   photo: "chicken_sandwich",
                   mainFood: Food.chiсken(name: "Chicken", photo: "chicken_pic"),
                   time: "20 min"),
            Recipe(name: "Avocado Chicken Salad",
                   descriprion: "Step 1 Preheat oven to 375 degrees F (190 degrees C). Line a baking sheet with aluminum foil Step 2 Place chicken breasts on prepared baking sheet Step 3 Cook in the preheated oven until no longer pink in the middle and juices run clear, 15 to 25 minutes. An instant-read thermometer inserted into the center should read at least 165 degrees F (74 degrees C). Shred chicken breasts Step 4 Stir chicken, avocado, scallions, celery, onion, lime juice, cilantro, cayenne pepper, salt, and black pepper together in a bowl.",
                   photo: "avocado_chichen_salad",
                   mainFood: Food.chiсken(name: "Chicken", photo: "chicken_pic"),
                   time: "30 min"),
            Recipe(name: "Grilled Chicken Wings",
                   descriprion: "Step 1 Preheat an outdoor grill for high heat and lightly oil the grate. Step 2 Tuck in the chicken wing flaps so the wing forms a triangle. Step 3 Combine olive oil with some of the garlic salt and pepper in a large bowl. Add a few chicken wings and turn to coat with seasonings. Add more wings, remaining garlic salt, and remaining pepper and turn to coat. Repeat until all wings are coated. Place on the preheated grill. Step 4 Grill until wings are well browned, tender, and no longer pink at the bone and juices run clear, turning several times and rearranging them so they cook evenly, 30 to 40 minutes.",
                   photo: "chicken_wings",
                   mainFood: Food.chiсken(name: "Chicken", photo: "chicken_pic"),
                   time: "40 min"),
            Recipe(name: "BBQ Pork Sandwiches",
                   descriprion: "Step 1 Preheat oven to 175 degrees C. Place roast in a 9x13 inch pan, sprinkle with garlic salt, and cover with foil. Step 2 Bake in preheated oven for 3 to 4 hours, or until a meat thermometer inserted reads 145 degrees F (63 degrees C). Preheat an outdoor grill for high heat and lightly oil grate. Step 3 Grill roast for 10 minutes on each side. Return roast to the pan, and shred the meat using two forks. Stir in barbecue sauce, and return to the oven for 20 minutes, or until heated through. Spoon meat onto buns.",
                   photo: "pork_sandwich",
                   mainFood: Food.meat(name: "Meat", photo: "meat_pic"),
                   time: "4 hrs 15 min"),
            Recipe(name: "Pork Fries",
                   descriprion: "Step 1 Remove tenderloin from packaging and place on cutting board; cut into 3 equal length sections, each about 3 inches long. Slice each section into 1/4- to 1/2-inch diameter strips. You will end up with approximately 34 strips that are similar in size and shape to French fries. Step 2 Place eggs, breadcrumbs and flour into separate bowls. Dredge pork strips in flour, coat with beaten egg, and toss in breadcrumbs. Step 3 Pour oil into large skillet until 1/4 inch deep; heat over medium-high. Gently place approximately 8 breaded pork strips into oil. Fry approximately 1 1/2 minutes per side, drain on paper towels. Repeat until all pork strips are fried. Step 4 Serve with BBQ sauce, sriracha mayonnaise, or ranch dressing for dipping.",
                   photo: "pork_fries",
                   mainFood: Food.meat(name: "Meat", photo: "meat_pic"),
                   time: "40 min"),
            Recipe(name: "Pork Caesar Salad",
                   descriprion: "Step 1 To make salad dressing, whisk together mayonnaise, lemon juice, Worcestershire and hot pepper sauce in small bowl. Refrigerate until ready to use. Step 2 Heat olive oil in large skillet. Stir-fry pork strips over medium-high heat until browned. Step 3 Layer pork strips over lettuce in large bowl. Top with croutons, cheese and pepper. Serve drizzled with salad dressing.",
                   photo: "pork_salad",
                   mainFood: Food.meat(name: "Meat", photo: "meat_pic"),
                   time: "15 min"),
            Recipe(name: "Fish Fry Bake",
                   descriprion: "Step 1 Preheat the oven to 175 degrees CStep 2 Line the bottom of a 9x13 inch baking dish with fish sticks. Sprinkle fries in a layer over the fish. Mix together the cream of celery soup, milk, and mayonnaise; pour over the fish and fries.Step 3 Bake uncovered for 45 minutes in the preheated oven. Cool slightly before serving.",
                   photo: "fish_fries",
                   mainFood: Food.fish(name: "Fish", photo: "fish_pic"),
                   time: "1 hr"),
            Recipe(name: "Spicy Tuna Sandwich",
                   descriprion: "Step 1 Stir tuna, Cheddar cheese, diced jalapeno, mayonnaise, relish, lemon juice, and pepper together in a bowl. Spread tuna mixture on a slice of toast and top with remaining slice to make a sandwich.",
                   photo: "fish_sandwich",
                   mainFood: Food.fish(name: "Fish", photo: "fish_pic"),
                   time: "15 min"),
            Recipe(name: "Macaroni and Tuna Salad",
                   descriprion: "Step 1 Bring a large pot of lightly salted water to a boil. Add macaroni and cook for 8 to 10 minutes or until al dente; drain and cool under running water. Step 2 Mix both cans of tuna into the cooled pasta. Add the mayonnaise. Stir in onion, salt, pepper, garlic powder, and oregano.",
                   photo: "macaroni_and_tuna_salad",
                   mainFood: Food.fish(name: "Fish", photo: "fish_pic"),
                   time: "25 min")
        ]
    }
}

enum Food {
    case meat(name: String, photo: String)
    case chiсken(name: String, photo: String)
    case fish(name: String, photo: String)
}

