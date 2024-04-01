class ProductData {
  static Set<Map<String, dynamic>> cartData = {};
  static List<Map<String, dynamic>> cartProductData = [];
  static List<Map<String, dynamic>> allProductData = <Map<String, dynamic>>[
    {
      'categoryName': 'Clothes',
      'categoryProducts': [
        {
          "productName": "Men's Blue Denim Jacket",
          "category": "Clothes",
          "description":
              "A stylish denim jacket for men in classic blue color. Perfect for casual outings and layering in cooler weather.",
          "price": 79.99,
          "image":
              "https://m.media-amazon.com/images/I/71S-Howl3JL._SX569_.jpg",
          "images": [
            "https://rukminim2.flixcart.com/image/832/832/km2clu80/jacket/t/g/l/xl-mnt-7004-montrez-original-imagffv4knytvqme.jpeg?q=70&crop=false",
            "https://rukminim2.flixcart.com/image/832/832/km2clu80/jacket/n/t/d/xl-mnt-7004-montrez-original-imagffv4segu9zta.jpeg?q=70&crop=false",
            "https://rukminim2.flixcart.com/image/832/832/km2clu80/jacket/n/t/d/xl-mnt-7004-montrez-original-imagffv4segu9zta.jpeg?q=70&crop=false",
          ],
        },
        {
          "productName": "Women's Floral Print Dress",
          "category": "Clothes",
          "description":
              "A beautiful floral print dress for women, ideal for summer days or special occasions. Flattering silhouette and comfortable fit.",
          "price": 59.99,
          "image":
              "https://m.media-amazon.com/images/I/61f8cIxNo7L._SX569_.jpg",
          "images": [
            "https://m.media-amazon.com/images/I/7104-PTrgnL._SX569_.jpg",
            "https://m.media-amazon.com/images/I/61jxSM3eYVL._SX569_.jpg",
            "https://m.media-amazon.com/images/I/61WbKwu1AqL._SX569_.jpg",
          ],
        },
      ],
    },
    {
      "categoryName": "Sports Equipment",
      "categoryProducts": [
        {
          "productName": "Men's Basketball Shoes",
          "category": "Sports Equipment",
          "description":
              "High-performance basketball shoes designed for men. Provides excellent traction, support, and cushioning for intense gameplay.",
          "price": 129.99,
          "image":
              "https://m.media-amazon.com/images/I/71vuvrgIjAL._SY695_.jpg",
          "images": [
            "https://m.media-amazon.com/images/I/71CA5ljmENL._SY675_.jpg",
            "https://m.media-amazon.com/images/I/81D80n0GoQL._SY675_.jpg",
            "https://m.media-amazon.com/images/I/812NaQf+fPL._SY675_.jpg",
          ],
        },
        {
          "productName": "Women's Yoga Mat",
          "category": "Sports Equipment",
          "description":
              "A premium yoga mat designed specifically for women. Made from eco-friendly materials, providing excellent grip and comfort during yoga sessions.",
          "price": 39.99,
          "image":
              "https://m.media-amazon.com/images/I/71pb0so6FcL._SL1500_.jpg",
          "images": [
            "https://m.media-amazon.com/images/I/71U0I+-7D1L._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/71oKJbf5EUL._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/71qJbQa3zoL._SL1500_.jpg",
          ],
        },
      ],
    },
    {
      "categoryName": "Home Appliances",
      "categoryProducts": [
        {
          "productName": "Samsung Smart Refrigerator",
          "category": "Home Appliances",
          "description":
              "A smart refrigerator from Samsung with built-in touchscreen and voice assistant integration. Keeps your food fresh and organized while providing smart features for convenience.",
          "price": 1999,
          "image":
              "https://m.media-amazon.com/images/I/614fkA7aVEL._SL1500_.jpg",
          "images": [
            "https://m.media-amazon.com/images/I/81iTQn2GN7L._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/71crZtcQ4sL._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/71HHHyvztlL._SL1500_.jpg",
          ],
        },
        {
          "productName": "Dyson V11 Cordless Vacuum Cleaner",
          "category": "Home Appliances",
          "description":
              "The Dyson V11 Cordless Vacuum Cleaner offers powerful suction and intelligent cleaning modes. Perfect for keeping your home clean and dust-free.",
          "price": 599,
          "image":
              "https://m.media-amazon.com/images/I/519XF4yGS5L._SL1000_.jpg",
          "images": [
            "https://m.media-amazon.com/images/I/51pYO9-b7XL._SL1000_.jpg",
            "https://m.media-amazon.com/images/I/61sd-RNV15L._SL1000_.jpg",
            "https://m.media-amazon.com/images/I/61bTH7wB4lL._SL1000_.jpg",
          ],
        },
      ],
    },
    {
      "categoryName": "Garage Equipment",
      "categoryProducts": [
        {
          "productName": "Craftsman Tool Chest",
          "category": "Garage Equipment",
          "description":
              "The Craftsman Tool Chest is perfect for organizing your tools in the garage. Features multiple drawers and compartments for easy storage and access.",
          "price": 499.99,
          "image":
              "https://m.media-amazon.com/images/I/51n+1LIGK+L._SL1000_.jpg",
          "images": [
            "https://m.media-amazon.com/images/I/71hyqml6VBL._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/51n+1LIGK+L._SL1000_.jpg",
          ],
        },
        {
          "productName": "Electric Jack",
          "category": "Garage Equipment",
          "description":
              "A car lift for your garage, allowing you to lift vehicles for maintenance and repairs. Sturdy construction and easy-to-use design.",
          "price": 2999.99,
          "image":
              "https://m.media-amazon.com/images/I/6128Us13i0L._SL1412_.jpg",
          "images": [
            "https://m.media-amazon.com/images/I/71tQO+0+IhL._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/61PTXqvbPGL._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/61J0hmgPjnL._SL1500_.jpg",
          ],
        },
      ],
    },
    {
      "categoryName": "Garden Equipment",
      "categoryProducts": [
        {
          "productName": "Electric Lawn Mower",
          "category": "Garden Equipment",
          "description":
              "An electric lawn mower for maintaining your garden. Features a powerful motor, adjustable cutting height, and easy maneuverability.",
          "price": 299.99,
          "image":
              "https://m.media-amazon.com/images/I/619xgOIdjzL._SL1500_.jpg",
          "images": [
            "https://m.media-amazon.com/images/I/61XWG+u9OSL._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/71aktnyI1IL._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/61G3SRVIm6L._SL1500_.jpg",
          ],
        },
        {
          "productName": "Gas-Powered Hedge Trimmer",
          "category": "Garden Equipment",
          "description":
              "A gas-powered hedge trimmer for trimming bushes and shrubs in your garden. Provides precise cutting and easy handling.",
          "price": 149.99,
          "image":
              "https://m.media-amazon.com/images/I/617M5pVIkbL._SL1500_.jpg",
          "images": [
            "https://m.media-amazon.com/images/I/7119vStx40L._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/91JAq8j4pAL._SL1500_.jpg",
            "https://m.media-amazon.com/images/I/61BvE8TswdL._SL1500_.jpg",
          ],
        }
      ]
    }
  ];

  static void convertUniqueData() {
    cartProductData = cartData.toList();
  }

  static num totalPrice() {
    num sum = 0;
    for (var element in cartProductData) {
      sum += element['price'];
    }
    return sum;
  }

//  get TotalPriceofCartProduct => totalPrice();
}
