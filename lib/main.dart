import 'package:flutter/material.dart';
import 'package:playstore/second.dart';
import 'package:playstore/splashscreen.dart';

void main() {
  runApp(go());
}

class go extends StatefulWidget {
  const go({super.key});

  @override
  State<go> createState() => _goState();
}

class _goState extends State<go> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First_page(),
    );
  }
}

class one extends StatefulWidget {
  one({super.key});

  @override
  State<one> createState() => _oneState();
}

late TabController tabController;

class _oneState extends State<one> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 5,
      vsync: this,
    );
    tabController.addListener(() {});
  }

  List<Widget> a = <Widget>[
    Center(
      child: Expanded(child: second()),
    ),
    Center(
      child: Expanded(child: second()),
    ),
    Center(
      child: Expanded(child: second()),
    ),
    Center(
      child: Expanded(child: second()),
    ),
    Center(
      child: Expanded(child: second()),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xff131313),
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff292a2c),
              ),
              width: 230,
              padding: EdgeInsets.all(02),
              child: TextField(
                onChanged: (value) {
                  // Handle search logic here
                },
                decoration: InputDecoration(
                    hintText: 'Search Apps & G...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.grey,
                    )),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            actions: [
              Icon(
                Icons.notifications_none,
                size: 35,
                color: Colors.white60,
              ),
              SizedBox(
                width: 20,
              ),
              Builder(builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                    "https://wallpaperaccess.com/full/9327602.jpg",
                  )),
                );
              }),
              SizedBox(
                width: 30,
              ),
            ],
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "For you",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Tab(
                  child: Text(
                    "Top charts",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Tab(
                  child: Text(
                    "Children",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Tab(
                  child: Text(
                    "Premium",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Tab(
                  child: Text(
                    "Categories",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
              onTap: (index) {
                print(index);
              },
              controller: tabController,
            ),
          ),
          body: TabBarView(controller: tabController, children: a),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xff1e1f21),
            // Set a visible background color
            selectedItemColor: Colors.grey,
            unselectedItemColor: Colors.grey,
            //currentIndex: _selectedIndex,
            //  onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,

            // Ensure labels are always visible
            items: [
              BottomNavigationBarItem(
                icon: Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => one()),
                      );
                    },
                    icon: Icon(Icons.videogame_asset_sharp),
                  );
                }),
                label: 'Games',
              ),
              BottomNavigationBarItem(
                icon: Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => one()),
                      );
                    },
                    icon: Icon(Icons.apps),
                  );
                }),
                label: 'Apps',
              ),
              BottomNavigationBarItem(
                icon: Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => one()),
                      );
                    },
                    icon: Icon(Icons.local_offer_outlined),
                  );
                }),
                label: 'Offers',
              ),
              BottomNavigationBarItem(
                icon: Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => one()),
                      );
                    },
                    icon: Icon(Icons.book_outlined),
                  );
                }),
                label: 'Books',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  Widget piccontainer(
      String img, double btnwidth, double btnheight, EdgeInsets margin) {
    return Container(
      width: btnwidth,
      height: btnheight,
      margin: margin,
      child: Image(
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
        image: NetworkImage(
          img,
        ),
      ),
    );
  }

  Widget img(
      String img,
      double btnwidth,
      double hwidth1,
      double btnheight,
      BorderRadius bt,
      BorderRadius bt1,
      Color white,
      Color black,
      Color grey,
      Color blue,
      String text,
      String text1,
      String text2,
      String text3,
      String text4,
      String text5,
      double num,
      double num1) {
    return Container(
      width: 400,
      height: 90,
      child: Stack(children: [
        Row(
          children: [
            Container(
              width: btnwidth,
              height: btnheight,
              decoration: BoxDecoration(
                color: white,
                borderRadius: bt,
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: hwidth1,
              color: black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(color: white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 03,
                  ),
                  Text(
                    text1,
                    style: TextStyle(color: white, fontSize: num),
                  ),
                  SizedBox(
                    height: 03,
                  ),
                  Text(
                    text2,
                    style: TextStyle(color: white, fontSize: num),
                  ),
                  SizedBox(
                    height: 03,
                  ),
                  Text(
                    text3,
                    style: TextStyle(color: white, fontSize: num),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          left: num1,
          child: Container(
            child: Column(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: grey), // Border color
                      shape: RoundedRectangleBorder(
                        borderRadius: bt1, // Rounded corners
                      )),
                  child: Center(
                    child: Text(
                      text4,
                      style: TextStyle(color: blue),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    text5,
                    style: TextStyle(color: white, fontSize: num),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        child: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Sponsored .",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                "Suggested for You",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 95,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Offline Games",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 210,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Animal games",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 220,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                            SizedBox(
                              height: 10,
                            ),
                            img(
                                "https://wallpaperaccess.com/full/9327602.jpg",
                                80,
                                300,
                                80,
                                BorderRadius.circular(16),
                                BorderRadius.circular(30),
                                Colors.white,
                                Color(0xff131313),
                                Colors.grey,
                                Colors.blue,
                                "Battlegrounds Mobile India",
                                "Activisionn...' 16+ Rated f... 4.2*",
                                "Contains ads",
                                "Action Tactical shooter",
                                "Install",
                                "In-app purchases",
                                10,
                                300),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
                piccontainer("https://wallpaperaccess.com/full/9327602.jpg",
                    312.0, 270.0, EdgeInsets.all(7.0)),
              ],
            ),
          ),
        ]),
      )
    ]);
  }
}
