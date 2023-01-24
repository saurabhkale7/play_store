import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const List<Tab> _tabs = [
    const Tab(
      child: const Text(
        'For you',
      ),
    ),
    const Tab(
      child: const Text(
        'Top charts',
      ),
    ),
    const Tab(
      child: const Text(
        'Children',
      ),
    ),
    const Tab(
      child: const Text(
        'Events',
      ),
    ),
    const Tab(
      child: const Text(
        'Premium',
      ),
    ),
    const Tab(
      child: const Text(
        'Categories',
      ),
    ),
  ];

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Container(
          padding: const EdgeInsets.only(top: 35),
          color: Colors.white,
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: PreferredSize(
                //toolbarHeight: 30,
                preferredSize: const Size.fromHeight(35.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: AppBar(
                    backgroundColor: Color(0xFFE6E6FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    flexibleSpace: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            color: Colors.transparent,
                            //iconSize: 25,
                            padding: const EdgeInsets.only(left: 20),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Colors.black,
                            )),
                        Expanded(
                          child: Padding(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: Text('Search for apps & games').data,
                              ),
                            ),
                            padding:
                                EdgeInsets.only(bottom: 10, left: 10, top: 4),
                          ),
                        ),
                        IconButton(
                          padding: const EdgeInsets.only(bottom: 0, right: 10),
                          color: Colors.transparent,
                          iconSize: 25,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic_none,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          padding: const EdgeInsets.only(right: 20),
                          //iconSize: 50,
                          color: Colors.transparent,
                          icon: const CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text(
                              "S",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            maxRadius: 30,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              bottomNavigationBar: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E6FA),
                  // borderRadius: const BorderRadius.only(
                  //   topLeft: Radius.circular(20),
                  //   topRight: Radius.circular(20),
                  // ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Image.asset("assets/icons/games.png"),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset("assets/icons/apps.png"),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset("assets/icons/offers.png"),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset("assets/icons/books.png"),
                        onPressed: () {},
                      ),
                    ]),
              ),
              body: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  flexibleSpace: TabBar(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.blue,
                    //indic
                    tabs: _tabs,
                    isScrollable: true,
                  ),
                ),
                body: TabBarView(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 20,
                      ),
                      child: ListView(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Top-rated games",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    IconButton(
                                      icon: Icon(Icons.arrow_right_alt),
                                      onPressed: () {},
                                      alignment: Alignment.centerRight,
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/candycrush.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Candy Crush Saga",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            // FittedBox(
                                            //   fit: BoxFit.contain,
                                            //   child:
                                            // ),
                                            Row(
                                              children: [
                                                Text("4.4"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            )
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/dream11.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Dream 11",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Row(
                                              children: [
                                                Text("4.3"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            )
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/ludoking.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Ludo King",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.2"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/carrompool.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Carrom Pool",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.2"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/templerun.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Temple Run",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.1"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/snowrace.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Snow Race",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("3.9"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/subwaysurfers.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Subway Surfers",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.4"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Casual games",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    IconButton(
                                      icon: Icon(Icons.arrow_right_alt),
                                      onPressed: () {},
                                      alignment: Alignment.centerRight,
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/snowrace.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Snow Race",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("3.9"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/subwaysurfers.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Subway Surfers",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.4"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/carrompool.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Carrom Pool",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.2"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/templerun.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Temple Run",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.1"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/candycrush.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Candy Crush Saga",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            // FittedBox(
                                            //   fit: BoxFit.contain,
                                            //   child:
                                            // ),
                                            Row(
                                              children: [
                                                Text("4.4"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            )
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/dream11.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Dream 11",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Row(
                                              children: [
                                                Text("4.3"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            )
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/ludoking.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Ludo King",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.2"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Recommended for you",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    IconButton(
                                      icon: Icon(Icons.arrow_right_alt),
                                      onPressed: () {},
                                      alignment: Alignment.centerRight,
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/ludoking.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Ludo King",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.2"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/carrompool.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Carrom Pool",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.2"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/templerun.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Temple Run",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.1"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/candycrush.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Candy Crush Saga",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            // FittedBox(
                                            //   fit: BoxFit.contain,
                                            //   child:
                                            // ),
                                            Row(
                                              children: [
                                                Text("4.4"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            )
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/dream11.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Dream 11",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Row(
                                              children: [
                                                Text("4.3"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            )
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/snowrace.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Snow Race",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("3.9"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/subwaysurfers.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Subway Surfers",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.4"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Stylised games",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    IconButton(
                                      icon: Icon(Icons.arrow_right_alt),
                                      onPressed: () {},
                                      alignment: Alignment.centerRight,
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/carrompool.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Carrom Pool",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.2"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/templerun.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Temple Run",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.1"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/candycrush.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Candy Crush Saga",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            // FittedBox(
                                            //   fit: BoxFit.contain,
                                            //   child:
                                            // ),
                                            Row(
                                              children: [
                                                Text("4.4"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            )
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/snowrace.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Snow Race",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("3.9"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/subwaysurfers.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Subway Surfers",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.4"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/dream11.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Dream 11",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Row(
                                              children: [
                                                Text("4.3"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            )
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                "assets/top_rated_icons/ludoking.png",
                                              ),
                                              alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                              child: Text(
                                                "Ludo King",
                                                textAlign: TextAlign.left,
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Flexible(
                                                child: Row(
                                              children: [
                                                Text("4.2"),
                                                Icon(Icons.star_sharp)
                                              ],
                                            ))
                                          ],
                                        ),
                                        width: 100,
                                        height: 120,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Center(child: const Text('Content of Tab Two')),
                    const Center(child: const Text('Content of Tab Three')),
                    const Center(child: const Text('Content of Tab Four')),
                    const Center(child: const Text('Content of Tab Five')),
                    const Center(child: const Text('Content of Tab Six')),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
