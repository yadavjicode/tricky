import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tricky/constant/color.dart';

import '../../constant/font.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: TabBar(
          controller: _tabController,
          dividerHeight: 0,
          labelColor: AppColors.purple,
          unselectedLabelColor: Colors.black,
          indicator: const BoxDecoration(),
          tabs: const [
            Tab(text: 'Nearby'),
            Tab(text: 'Discover'),
            Tab(text: 'Friends'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController, // Pass the TabController here
        children: [
          NearbyPage(),
          DiscoverPage(),
          FriendsScreen(),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(fontSize: 24)),
            ),
            ListTile(
              title: Text('Option 1'),
              onTap: null,
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: null,
            ),
          ],
        ),
      ),
    );
  }
}

class NearbyPage extends StatefulWidget {
  const NearbyPage({super.key});

  @override
  State<NearbyPage> createState() => _HomeState();
}

class _HomeState extends State<NearbyPage> {
  final List<User> users = [
    User(image: 'assets/images/imageA.png', name: 'John Doe', endCode: '1234'),
    User(
        image: 'assets/images/imageB.png', name: 'Jane Smith', endCode: '5678'),
    User(image: 'assets/images/imageC.png', name: 'Mike Lee', endCode: '9101'),
    User(
        image: 'assets/images/imageD.png',
        name: 'Chris Evans',
        endCode: '1122'),
    User(image: 'assets/images/imageA.png', name: 'John Doe', endCode: '1234'),
    User(
        image: 'assets/images/imageB.png', name: 'Jane Smith', endCode: '5678'),
    User(image: 'assets/images/imageC.png', name: 'Mike Lee', endCode: '9101'),
    User(
        image: 'assets/images/imageD.png',
        name: 'Chris Evans',
        endCode: '1122'),
    User(image: 'assets/images/imageA.png', name: 'John Doe', endCode: '1234'),
    User(
        image: 'assets/images/imageB.png', name: 'Jane Smith', endCode: '5678'),
    User(image: 'assets/images/imageC.png', name: 'Mike Lee', endCode: '9101'),
    User(
        image: 'assets/images/imageD.png',
        name: 'Chris Evans',
        endCode: '1122'),
    // Add more users as needed
  ];
  final List<String> countries = [
    "Delhi",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan"

    // Add more countries as needed
  ];

  final List<String> regionList = [
    "Northern India",
    "Southern India",
    "Eastern India",
    "Western India",
    "Central India",
    "North-Eastern India",

    // Add more countries as needed
  ];

  // Selected country
  String selectedCountry = 'Delhi';
  String region = "More Regions";

  void _showCountryPicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: 400,
          child: ListView.builder(
            itemCount: countries.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(countries[index]),
                onTap: () {
                  setState(() {
                    selectedCountry = countries[index];
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              );
            },
          ),
        );
      },
    );
  }

  void _showRegionPicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: 400,
          child: ListView.builder(
            itemCount: regionList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(regionList[index]),
                onTap: () {
                  setState(() {
                    region = regionList[index];
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.constColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: _showCountryPicker,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColors.purple),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset("assets/icons/location.svg"),
                          const SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: Text(
                              selectedCountry,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          const Icon(Icons.arrow_drop_down,
                              color: AppColors.purple),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: _showRegionPicker, // Show country picker on tap
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.blueAccent),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset("assets/icons/global.svg"),
                          const SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: Text(
                              region,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          const Icon(Icons.arrow_drop_down,
                              color: Colors.blueAccent),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  crossAxisSpacing: 8.0, // Space between columns
                  mainAxisSpacing: 8.0, // Space between rows
                  childAspectRatio: 4 / 6, // Aspect ratio for items
                ),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Get.toNamed("/profileDetail");
                      },
                      child: UserCard(user: users[index]));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(user.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              bottom: 7,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/india.png",
                          height: 18,
                          width: 18,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "IND",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      "English",
                      style: FontConstant.styleRegular(
                          fontSize: 13, color: Colors.white),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.7),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      "Lv6",
                      style: FontConstant.styleRegular(
                          fontSize: 13, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset("assets/icons/location.svg"),
            const SizedBox(
              width: 4,
            ),
            const Text("Delhi")
          ],
        ),
        Row(
          children: [
            SvgPicture.asset("assets/icons/call.svg"),
            const SizedBox(
              width: 4,
            ),
            Text(user.name)
          ],
        ),
      ],
    );
  }
}

class User {
  final String image;
  final String name;
  final String endCode;

  User({required this.image, required this.name, required this.endCode});
}

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPage();
}

class _DiscoverPage extends State<DiscoverPage> {
  final List<User> users = [
    User(image: 'assets/images/imageA.png', name: 'John Doe', endCode: '1234'),
    User(
        image: 'assets/images/imageB.png', name: 'Jane Smith', endCode: '5678'),
    User(image: 'assets/images/imageC.png', name: 'Mike Lee', endCode: '9101'),
    User(
        image: 'assets/images/imageD.png',
        name: 'Chris Evans',
        endCode: '1122'),
    User(image: 'assets/images/imageA.png', name: 'John Doe', endCode: '1234'),
    User(
        image: 'assets/images/imageB.png', name: 'Jane Smith', endCode: '5678'),
    User(image: 'assets/images/imageC.png', name: 'Mike Lee', endCode: '9101'),
    User(
        image: 'assets/images/imageD.png',
        name: 'Chris Evans',
        endCode: '1122'),
    User(image: 'assets/images/imageA.png', name: 'John Doe', endCode: '1234'),
    User(
        image: 'assets/images/imageB.png', name: 'Jane Smith', endCode: '5678'),
    User(image: 'assets/images/imageC.png', name: 'Mike Lee', endCode: '9101'),
    User(
        image: 'assets/images/imageD.png',
        name: 'Chris Evans',
        endCode: '1122'),
    // Add more users as needed
  ];
  final List<String> countries = [
    "Delhi",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan"

    // Add more countries as needed
  ];

  final List<String> regionList = [
    "Northern India",
    "Southern India",
    "Eastern India",
    "Western India",
    "Central India",
    "North-Eastern India",

    // Add more countries as needed
  ];

  // Selected country
  String selectedCountry = 'Delhi';
  String region = "More Regions";

  void _showCountryPicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: 400,
          child: ListView.builder(
            itemCount: countries.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(countries[index]),
                onTap: () {
                  setState(() {
                    selectedCountry = countries[index];
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              );
            },
          ),
        );
      },
    );
  }

  void _showRegionPicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: 400,
          child: ListView.builder(
            itemCount: regionList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(regionList[index]),
                onTap: () {
                  setState(() {
                    region = regionList[index];
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.constColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: _showCountryPicker,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColors.purple),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset("assets/icons/location.svg"),
                          const SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: Text(
                              selectedCountry,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          const Icon(Icons.arrow_drop_down,
                              color: AppColors.purple),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: _showRegionPicker, // Show country picker on tap
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.blueAccent),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset("assets/icons/global.svg"),
                          const SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: Text(
                              region,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          const Icon(Icons.arrow_drop_down,
                              color: Colors.blueAccent),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  crossAxisSpacing: 8.0, // Space between columns
                  mainAxisSpacing: 8.0, // Space between rows
                  childAspectRatio: 4 / 6, // Aspect ratio for items
                ),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed("/profileDetail");

                    },
                    child: UserCard(user: users[index]));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserCard1 extends StatelessWidget {
  final User user1;

  const UserCard1({required this.user1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(user1.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              bottom: 7,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/india.png",
                          height: 18,
                          width: 18,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "IND",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      "English",
                      style: FontConstant.styleRegular(
                          fontSize: 13, color: Colors.black),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.7),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      "Lv6",
                      style: FontConstant.styleRegular(
                          fontSize: 13, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset("assets/icons/location.svg"),
            const SizedBox(
              width: 4,
            ),
            const Text("Delhi")
          ],
        ),
        Row(
          children: [
            SvgPicture.asset("assets/icons/call.svg"),
            const SizedBox(
              width: 4,
            ),
            Text(user1.name)
          ],
        ),
      ],
    );
  }
}

class User1 {
  final String image;
  final String name;
  final String endCode;

  User1({required this.image, required this.name, required this.endCode});
}

class FriendsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> friends = [
    {
      "name": "Nehaaa9419",
      "level": "Lv6",
      "points": "20,407664",
      "status": Colors.grey,
      "emoji": "😍",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Shanaya7",
      "level": "Lv9",
      "points": "30,407664",
      "status": Colors.pink,
      "emoji": "😴",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Ishud75b8b",
      "level": "Lv7",
      "points": "20,407664",
      "status": Colors.orange,
      "emoji": "🙏",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Ishud75b8b",
      "level": "Lv7",
      "points": "20,407664",
      "status": Colors.orange,
      "emoji": "🙏",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Ishud75b8b",
      "level": "Lv7",
      "points": "20,407664",
      "status": Colors.orange,
      "emoji": "🙏",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Ishud75b8b",
      "level": "Lv7",
      "points": "20,407664",
      "status": Colors.orange,
      "emoji": "🙏",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Ishud75b8b",
      "level": "Lv7",
      "points": "20,407664",
      "status": Colors.orange,
      "emoji": "🙏",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Ishud75b8b",
      "level": "Lv7",
      "points": "20,407664",
      "status": Colors.orange,
      "emoji": "🙏",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Ishud75b8b",
      "level": "Lv7",
      "points": "20,407664",
      "status": Colors.orange,
      "emoji": "🙏",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "name": "Ishud75b8b",
      "level": "Lv7",
      "points": "20,407664",
      "status": Colors.orange,
      "emoji": "🙏",
      "image":
          "https://plus.unsplash.com/premium_photo-1661508557554-e3d96f2fdde5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
  ];

  FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: friends.length,
                itemBuilder: (context, index) {
                  final friend = friends[index];
                  return FriendTile(friend: friend);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FriendTile extends StatelessWidget {
  final Map<String, dynamic> friend;

  const FriendTile({required this.friend});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(friend["image"]),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: friend["status"],
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(friend["name"],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(" ${friend["emoji"]}",
                        style: const TextStyle(fontSize: 16)),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star, size: 12, color: Colors.white),
                          const SizedBox(width: 4),
                          Text(friend["level"],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const Icon(Icons.emoji_events,
                            size: 16, color: Colors.grey),
                        const SizedBox(width: 4),
                        Text(friend["points"],
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.call),
            color: Colors.pinkAccent,
            onPressed: () {
              // Handle call action
            },
          ),
        ],
      ),
    );
  }
}
