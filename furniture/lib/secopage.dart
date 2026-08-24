import 'package:flutter/material.dart';
import 'package:furniture/thirdpage.dart';

class Secound_page extends StatefulWidget {
  const Secound_page({super.key});

  @override
  State<Secound_page> createState() => _Secound_pageState();
}

class _Secound_pageState extends State<Secound_page> {
  int _selectedIndex = 0;
  final List<Map<String, String>> products = [
    {
      "image": "assets/images/luna.jpg",
      "name": "Luna Sofa",
      "subname": "Modern 8 Seater Sofa",
      "price": "₹24,999",
    },
    {
      "image": "assets/images/accechair.jpg",
      "name": "Accent Chair",
      "subname": "Comfortable Lounge Chair",
      "price": "₹8,499",
    },
    {
      "image": "assets/images/oaktable.jpg",
      "name": "Oak Table",
      "subname": "Minimal Dining Table",
      "price": "₹12,999",
    },
    {
      "image": "assets/images/woodbed.jpg",
      "name": "Wooden Bed",
      "subname": "King Size Bed",
      "price": "₹29,999",
    },

    // extra
    {
  "image": "assets/images/board.jpg",
  "name": "Kitchen Wardrobe",
  "subname": "Spacious Wardrobe",
  "price": "₹18,999",
},

{
  "image": "assets/images/bookshelf.jpg",
  "name": "Wooden Bookshelf",
  "subname": "Modern Storage Shelf",
  "price": "₹9,499",
},
{
  "image": "assets/images/sidentable.jpg",
  "name": "Side Table",
  "subname": "Compact Bedside Table",
  "price": "₹5,499",
},
{
  "image": "assets/images/tvunit.jpg",
  "name": "TV Unit",
  "subname": "Modern Entertainment Unit",
  "price": "₹14,999",
},
{
  "image": "assets/images/dress ward.jpg",
  "name": "Wooden Dresser",
  "subname": "Stylish Bedroom Dresser",
  "price": "₹17,999",
},
{
  "image": "assets/images/table4.jpg",
  "name": "Cone Dining Table",
  "subname": "Modern Round Dining Table",
  "price": "₹16,999",
  
},

  ];

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffF7F1E8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //topbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Good morning,",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 3),

                        Text(
                          "Rihana",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff29231E),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.notifications_none,
                            color: Color.fromARGB(255, 222, 161, 110),
                          ),
                        ),
                        SizedBox(width: 10),

                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            "assets/images/profile.jpg",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //search bar
                SizedBox(height: 20),

                Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),

                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search furniture, rooms...",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //banner
                const SizedBox(height: 20),

                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(25),
                  child: Image.asset(
                    "assets/images/banner.jpg",
                    fit: BoxFit.cover,
                    height: 150,
                    width: double.infinity,
                  ),
                ),

                SizedBox(height: 25),

                //shop by room
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Shop by ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff29231E),
                      ),
                    ),

                    SizedBox(width: 10),
                    Text(
                      "Room",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Color(0xffA77A42),
                      ),
                    ),
                    Spacer(),

                    Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xffA77A42),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                //room list
                SizedBox(height: 20),
                SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      roomItem("Living Room", "assets/images/livingroom.jpg"),
                      roomItem("Bedroom", "assets/images/bedroom.jpg"),
                      roomItem("Dining", "assets/images/dining.jpg"),
                      roomItem("Office", "assets/images/office.jpg"),
                      roomItem("Entry space", "assets/images/entry.jpg"),
                      roomItem("Kids Room", "assets/images/kids.jpg"),
                      roomItem("Kitchen", "assets/images/kitchen.jpg"),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                //Brst sellers
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Best",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff29231E),
                      ),
                    ),

                    SizedBox(width: 10),
                    Text(
                      "Sellers",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Color(0xffA77A42),
                      ),
                    ),
                    Spacer(),

                    Text(
                      "view all",
                      style: TextStyle(
                        color: Color(0xffA77A42),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                //

                // products
                SizedBox(height: 20),

                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: products.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.73,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];

                    return bestSelleritem(
                      product["image"]!,
                      product["name"]!,
                      product["subname"]!,
                      product["price"]!,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),

      //bottom navigation

    bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  onTap: (index) {
    setState(() {
      _selectedIndex = index;
    });
  },
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.brown,
  unselectedItemColor: Colors.grey,
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category_outlined),
      activeIcon: Icon(Icons.category),
      label: "Categories",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      activeIcon: Icon(Icons.shopping_cart),
      label: "Cart",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: "Profile",
    ),
  ],
),

    );
  }

  Widget roomItem(String title, String image) {
    return Container(
      width: 90,
      margin: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(image, fit: BoxFit.cover, height: 80, width: 90),
          ),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontWeight: FontWeight(400))),
        ],
      ),
    );
  }

  //prodct widget

  Widget bestSelleritem(
    String image,
    String name,
    String subname,
    String price,
  ) {
    return GestureDetector(
      onTap: () {
        if(name == "Cone Dining Table"){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Thirdpage(),
          ),
          );
        }
      },
child:Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff29231E),
              ),
            ),

            const SizedBox(height: 4),

            Text(
              subname,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              price,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xffA77A42),
              ),
            ),
          ],
        ),
      ),
),
    );
  }
}
