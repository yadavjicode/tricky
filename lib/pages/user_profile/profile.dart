import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Column(
        children: [
          // Profile Section
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.purple[300],
                  child:
                      Icon(Icons.emoji_emotions, size: 60, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Nidhi3434',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Chip(label: Text("🇮🇳 India")),
                    SizedBox(width: 8),
                    Chip(label: Text("A English")),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('30',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Friends'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('30',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Following'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('30',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Followers'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text('My Diamonds',
                              style: TextStyle(color: Colors.purple)),
                          Text('800',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text('My Beans',
                              style: TextStyle(color: Colors.orange)),
                          Text('0',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.message, color: Colors.orange),
                  title: Text('Messages'),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('2', style: TextStyle(color: Colors.white)),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.verified_user, color: Colors.orange),
                  title: Text('My Level'),
                  trailing: Text('Lv0'),
                ),
                ListTile(
                  leading: Icon(Icons.task, color: Colors.purple),
                  title: Text('My Task'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('New Reward'),
                      Icon(Icons.circle, color: Colors.red, size: 8),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.backpack, color: Colors.purple),
                  title: Text('My Backpack'),
                  trailing: Text('0'),
                ),
                ListTile(
                  leading: Icon(Icons.mail, color: Colors.purple),
                  title: Text('My Invitation'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/myProfile");
                  },
                  child: ListTile(
                    leading: Icon(Icons.person, color: Colors.purple),
                    title: Text('My Profile'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/setting");
                  },
                  child: ListTile(
                    leading: Icon(Icons.settings, color: Colors.purple),
                    title: Text('Setting'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
