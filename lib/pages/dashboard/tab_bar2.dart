import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tricky/constant/color.dart';

import '../../constant/font.dart';

class CustomTabBar2 extends StatefulWidget {
  const CustomTabBar2({super.key});

  @override
  State<CustomTabBar2> createState() => _CustomTabBar2State();
}

class _CustomTabBar2State extends State<CustomTabBar2>
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
            Tab(text: 'Party'),
            Tab(text: 'Follow'),
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
        children: const [
          NearbyPage(),
          DiscoverPage(),
          FriendsPage(),
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

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Friends Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
