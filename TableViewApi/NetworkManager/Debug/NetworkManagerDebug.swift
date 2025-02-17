//
//  NetworkManagerDebug.swift
//  TableViewApi
//
//  Created by Muralidhar reddy Kakanuru on 12/9/24.
//

import Foundation

class NetworkManagerDebug: GitData {
    static let shared = NetworkManagerDebug()
    func getdata<T>(url: String, completion: @escaping @Sendable (T) -> Void) where T : Decodable {
        do {
            let decoded = try JSONDecoder().decode(T.self, from: foodJsonData!)
            DispatchQueue.main.async {
                completion(decoded)
            }
        } catch {
            print("Decoding error: \(error)")
        }
    }
}

let foodJsonData = """
{
        "food_groups": [
            {
                "id": 1,
                "name": "Paratha",
                "description": "Try pizza cooked in a woodfire oven",
                "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/FoodGroup%20Icons/pizza_icon.png",
                "food_items": [
                    {
                        "id": 11,
                        "name": "Margherita",
                        "description": "Tomato sauce, Mozarella, Basil",
                        "weight": 490,
                        "price": 151,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/1.png"
                    },
                    {
                        "id": 12,
                        "name": "Parma",
                        "description": "Tomato sauce, Mozarella, Prosciutto, Arugula, Parmesan",
                        "weight": 515,
                        "price": 141,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/2.png"
                    },
                    {
                        "id": 13,
                        "name": "Romana with Mushrooms",
                        "description": "Tomato sauce, Mozarella, Ham, Mushrooms",
                        "weight": 500,
                        "price": 161,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/3.png"
                    },
                    {
                        "id": 14,
                        "name": "Quatro formaggi",
                        "description": "Tomato sauce, Mozarella, Rockfor, Parmesan, Gauda or Emmental",
                        "weight": 540,
                        "price": 141,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/4.png"
                    },
                    {
                        "id": 15,
                        "name": "Capricciosa",
                        "description": "Tomato sauce, Mozarella, Ham, Mushrooms, Olives, Artichoke",
                        "weight": 490,
                        "price": 137,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/5.png"
                    },
                    {
                        "id": 16,
                        "name": "Diavola",
                        "description": "Tomato sauce, Mozarella, Salami, Olives",
                        "weight": 500,
                        "price": 141,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/6.png"
                    },
                    {
                        "id": 17,
                        "name": "Capitano",
                        "description": "Tomato sauce, Mozarella, Tuna, Olives, Capers, Onion",
                        "weight": 520,
                        "price": 141,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/7.png"
                    },
                    {
                        "id": 18,
                        "name": "Vikinga",
                        "description": "Tomato sauce, Mozarella, Tuna, Red/Green Pepper, Artichoke",
                        "weight": 520,
                        "price": 161,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/8.png"
                    },
                    {
                        "id": 19,
                        "name": "Parmigiana",
                        "description": "Tomato sauce, Mozarella, Prosciutto, Eggplant, Arugula, Parmesan",
                        "weight": 490,
                        "price": 129,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/9.png"
                    },
                    {
                        "id": 110,
                        "name": "Montanara",
                        "description": "Tomato sauce, Mozarella, Mushrooms, Arugula, Parmesan",
                        "weight": 520,
                        "price": 137,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/10.png"
                    },
                    {
                        "id": 111,
                        "name": "Romana with Sausages",
                        "description": "Tomato sauce, Mozarella, Ham, Sausages",
                        "weight": 480,
                        "price": 151,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/11.png"
                    },
                    {
                        "id": 112,
                        "name": "Pizza with Salmon",
                        "description": "Tomato sauce, Mozarella, Salmon, Capers",
                        "weight": 550,
                        "price": 119,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/12.png"
                    },
                    {
                        "id": 113,
                        "name": "Vegetariana",
                        "description": "Tomato sauce, Mozarella, Mushrooms, Red/Green Pepper, Artichoke, Olives, Eggplant",
                        "weight": 520,
                        "price": 161,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/13.png"
                    },
                    {
                        "id": 114,
                        "name": "Camaleonte",
                        "description": "Tomato sauce, Prosciutto, Mushrooms, Red/Green Pepper, Salami, 4 cheeses",
                        "weight": 490,
                        "price": 151,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/14.png"
                    },
                    {
                        "id": 115,
                        "name": "Funghi",
                        "description": "Tomato, Mozarella, Ham, Mushrooms, Oregano",
                        "weight": 490,
                        "price": 161,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/15.png"
                    },
                    {
                        "id": 116,
                        "name": "Napolitana",
                        "description": "Tomato, Anchovies, Capers, Olives, Garlic, Olive oil, Oregano",
                        "weight": 510,
                        "price": 151,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/16.png"
                    },
                    {
                        "id": 117,
                        "name": "BBQ Chicken",
                        "description": "BBQ sauce, Mozarella, Chicken, Onion, Cilantro, Parmesan",
                        "weight": 500,
                        "price": 141,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/17.png"
                    },
                    {
                        "id": 118,
                        "name": "Da Italia",
                        "description": "Mozarella, Pepperoni, Onion, Reduced balsalmic, Basil",
                        "weight": 490,
                        "price": 151,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Pizza%20Images/18.png"
                    }
                ]
            },
            {
                "id": 2,
                "name": "Indian food",
                "description": "One of the oldest and most diverse cuisines in the world",
                "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/FoodGroup%20Icons/chinese_icon.png",
                "food_items": [
                    {
                        "id": 21,
                        "name": "Sunomono",
                        "description": "Cucumber, Soy Sauce, Vinegar, Nori",
                        "weight": 200,
                        "price": 100,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Sunomono.jpg"
                    },
                    {
                        "id": 22,
                        "name": "Yōkan",
                        "description": "Mizu yokan, Neri yokan",
                        "weight": 280,
                        "price": 90,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Yokan.jpg"
                    },
                    {
                        "id": 23,
                        "name": "Tempura udon",
                        "description": "Udon, Dashi, Shrimps, Narutomaki, Mirin",
                        "weight": 310,
                        "price": 104,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Tempura%20udon.jpg"
                    },
                    {
                        "id": 24,
                        "name": "Kitakata ramen",
                        "description": "Ramen Noodles, Stock, Soy Sauce, Sardines, Pork, Scallions",
                        "weight": 290,
                        "price": 17,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Kitakata%20ramen.jpg"
                    },
                    {
                        "id": 25,
                        "name": "Tamago kake gohan",
                        "description": "Uruchimai, Rice Vinegar, Eggs",
                        "weight": 185,
                        "price": 34,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Tamago%20kake%20gohan.jpg"
                    },
                    {
                        "id": 26,
                        "name": "Kiritanpo",
                        "description": "Rice",
                        "weight": 265,
                        "price": 75,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Kiritanpo.jpg"
                    },
                    {
                        "id": 27,
                        "name": "Anpan",
                        "description": "Wheat Flour, Butter, Milk, Eggs, Red Bean Paste, Sesame Seeds",
                        "weight": 300,
                        "price": 154,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Anpan.jpg"
                    },
                    {
                        "id": 28,
                        "name": "Chankonabe",
                        "description": "Chicken, Scallions, Mushrooms, Carrot, Shrimps, Tofu",
                        "weight": 270,
                        "price": 93,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Chankonabe.jpg"
                    },
                    {
                        "id": 29,
                        "name": "Sūpu karē",
                        "description": "Chicken, Curry Powder, Potatoes, Bell Pepper, Carrot, Tomato Sauce",
                        "weight": 290,
                        "price": 59,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Supu%20kare.jpg"
                    },
                    {
                        "id": 210,
                        "name": "Chirashizushi",
                        "description": "Uruchimai, Rice Vinegar, Sashimi, Eggs, Surimi",
                        "weight": 200,
                        "price": 96,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Chirashizushi.jpg"
                    },
                    {
                        "id": 211,
                        "name": "Hitsumabushi",
                        "description": "Unagi, Rice, Dashi, Scallions, Nori",
                        "weight": 340,
                        "price": 49,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Hitsumabushi.jpg"
                    },
                    {
                        "id": 212,
                        "name": "Tebasaki yakitori",
                        "description": "Chicken, Salt, Black Pepper",
                        "weight": 310,
                        "price": 87,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Tebasaki%20yakitori.jpg"
                    },
                    {
                        "id": 213,
                        "name": "Yatsuhashi",
                        "description": "Rice Flour, Sugar, Cinnamon, Red Bean Paste",
                        "weight": 290,
                        "price": 113,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Yatsuhashi.jpg"
                    },
                    {
                        "id": 214,
                        "name": "Hiyashi chūka",
                        "description": "Ramen Noodles, Eggs, Shrimps, Persian Cucumber, Lettuce, Tomato",
                        "weight": 280,
                        "price": 190,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Hiyashi%20chuka.jpg"
                    },
                    {
                        "id": 215,
                        "name": "Kushiage",
                        "description": "Beef, Breadcrumbs, Black Pepper, Worcestershire Sauce, Soy Sauce",
                        "weight": 320,
                        "price": 89,
                        "image_url": "https://raw.githubusercontent.com/YevhenBiiak/10-Food/main/Resources/Chinese%20Images/Kushiage.jpg"
                    }
                ]
            }
        ]
    }
""".data(using: .utf8)
