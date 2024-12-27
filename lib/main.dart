import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageTen(),
    );
  }
}

class HomePageTen extends StatefulWidget {
  const HomePageTen({super.key});

  @override
  State<HomePageTen> createState() => _HomePageTenState();
}

class _HomePageTenState extends State<HomePageTen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xFF1C0F0D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C0F0D),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi! Bekzod",
                style: TextStyle(
                  color: Color(0xFFFD5D69),
                  fontWeight: FontWeight.w400,
                  fontSize: 25.31,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "What are you cooking today",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.45,
                ),
              ),
            ], // children
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffFFC6C9),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/svg/notification.svg",
                        width: 13,
                        height: 18,
                        fit: BoxFit.values.last,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffFFC6C9),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/svg/search.svg",
                        width: 15,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ], // children
            ),
          ),
        ], //actions
        bottom: const AppBarBottom(),

      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Trending Recipe",
                  style: TextStyle(
                    color: Color(0xFFFD5D69),
                    fontSize: 18,
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      width: 358,
                      height: 143,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: const Image(
                          image: AssetImage("assets/salami.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 7,
                      right: 8,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xffFFC6C9),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/svg/heart.svg",
                            width: 16,
                            height: 15,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 338,
                          height: 49,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(14),
                            ),
                            border: Border.symmetric(
                              vertical: BorderSide(
                                color: Color(0xffEC888D),
                                width: 1,
                              ),
                              // color: Color(0xffEC888D),
                              // width: 1,
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 1),
                                    child: Text(
                                      "Salami and cheese pizza",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 15,
                                    ),
                                    child: Text(
                                      "This is a quick overview of the ingredients...",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  width: double.infinity,
                  height: 255,
                  decoration: BoxDecoration(
                    color: const Color(0xffFD5D69),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 18, top: 10),
                        child: Text(
                          "Your Recipes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                  child: Image(
                                    image: AssetImage("assets/lunch.png"),
                                    width: 169,
                                    height: 162,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffFD5D69),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/svg/heart.svg",
                                        width: 15,
                                        height: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -25,
                                  left: 0,
                                  child: Container(
                                    width: 169,
                                    height: 49,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(14),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Chicken Burger',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff1C0F0D),
                                            ),
                                          ),
                                          const SizedBox(height: 3),
                                          Row(
                                            children: [
                                              const Text(
                                                "5",
                                                style: TextStyle(
                                                    color: Color(0xffEC888D),
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(width: 3),
                                              SvgPicture.asset(
                                                "assets/svg/star.svg",
                                                width: 10,
                                                height: 10,
                                              ),
                                              const SizedBox(width: 30),
                                              SvgPicture.asset(
                                                "assets/svg/clock.svg",
                                                width: 10,
                                                height: 10,
                                              ),
                                              const SizedBox(width: 4),
                                              const Text(
                                                '15min',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xffEC888D),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                  child: Image(
                                    image: AssetImage("assets/seafood.png"),
                                    width: 169,
                                    height: 162,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffFD5D69),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/svg/heart.svg",
                                        width: 15,
                                        height: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -25,
                                  left: 0,
                                  child: Container(
                                    width: 169,
                                    height: 49,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(14),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Tiramisu',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff1C0F0D),
                                            ),
                                          ),
                                          const SizedBox(height: 3),
                                          Row(
                                            children: [
                                              const Text(
                                                "5",
                                                style: TextStyle(
                                                    color: Color(0xffEC888D),
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(width: 3),
                                              SvgPicture.asset(
                                                "assets/svg/star.svg",
                                                width: 10,
                                                height: 10,
                                              ),
                                              const SizedBox(width: 30),
                                              SvgPicture.asset(
                                                "assets/svg/clock.svg",
                                                width: 10,
                                                height: 10,
                                              ),
                                              const SizedBox(width: 4),
                                              const Text(
                                                '15min',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xffEC888D),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top chef",
                      style: TextStyle(
                        color: Color(0xFFFD5D69),
                        fontSize: 20,
                      ),
                    ),
                      SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image(
                              image: AssetImage("assets/joseph.png"),
                              width: 83,
                              height: 74,
                            ),
                            Text(
                              "Joseph",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ), Column(
                          children: [
                            Image(
                              image: AssetImage("assets/andrew.png"),
                              width: 83,
                              height: 74,
                            ),
                            Text(
                              "Andrew",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ), Column(
                          children: [
                            Image(
                              image: AssetImage("assets/emily.png"),
                              width: 83,
                              height: 74,
                            ),
                            Text(
                              "Emily",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ), Column(
                          children: [
                            Image(
                              image: AssetImage("assets/jessico.png"),
                              width: 83,
                              height: 74,
                            ),
                            Text(
                              "Jessico",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),


                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 281,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
              color: const Color(0xFFFD5D69),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  "assets/svg/home.svg",
                  fit: BoxFit.cover,
                  width: 27,
                  height: 27,
                ),
                SvgPicture.asset(
                  "assets/svg/categories.svg",
                  fit: BoxFit.cover,
                  width: 27,
                  height: 27,
                ),
                SvgPicture.asset(
                  "assets/svg/community.svg",
                  fit: BoxFit.cover,
                  width: 27,
                  height: 27,
                ),
                SvgPicture.asset(
                  "assets/svg/profile.svg",
                  fit: BoxFit.cover,
                  width: 27,
                  height: 27,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } //widget
} // stateful

class AppbarItems extends StatelessWidget {
  const AppbarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBottom({super.key});

  @override
  Size get preferredSize => const Size(double.infinity, 40);

  static List<Widget> items = [
    Container(
      width: 81,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xffFD5D69),
      ),
      child: const Center(
        child: Text(
          "Breakfast",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    ),
    const Text(
      "Lunch",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
    const Text(
      "Dinner",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
    const Text(
      "Vegan",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
    const Text(
      "Drinks",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
    const Text(
      "Milk",
      style: TextStyle(
        color: Color(0xFFFD5D69),
        fontSize: 16,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 25,
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => items[index],
          separatorBuilder: (context, index) {
            if (index == 0) {
              return const SizedBox(width: 40);
            } else if (index == items.length + 5) {
              return const SizedBox(width: 40);
            } else {
              return const SizedBox(width: 40);
            }
          },
          itemCount: items.length,
        ),
      ),
    );
  }
}

class TrendingRecipe extends StatelessWidget {
  const TrendingRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class YourRecipes extends StatelessWidget {
  const YourRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class TopChefs extends StatelessWidget {
  const TopChefs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
