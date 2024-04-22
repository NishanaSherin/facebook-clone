import 'dart:io';

import 'package:facebook_application/facebook_model/home_screen.dart';
// ignore: unused_import
import 'package:facebook_application/facebook_model/menu_screen.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

class FacebookScreen extends StatefulWidget {
  const FacebookScreen({super.key});

  @override
  State<FacebookScreen> createState() => _FacebookScreenState();
}

class _FacebookScreenState extends State<FacebookScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
    void _showBackDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
            'Are you sure you want to leave this page?',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('No'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Yes'),
              onPressed: () {
                Navigator.pop(context);
                exit(0);
                
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
        _showBackDialog();
      },
      child: DefaultTabController(
      length: 6,
      child: Scaffold(
          drawerEnableOpenDragGesture: false,
          key: _key,
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Menu",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(174, 226, 224, 225),
                            radius: 20,
                            child: Icon(Icons.settings, color: Colors.black),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(174, 226, 224, 225),
                            radius: 20,
                            child: Icon(Icons.search, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_5ypWM_BYPwArdEagKShnnVIFjQmIA7E7hw&s"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: const Text("Aneekha"),
                  subtitle: const Text("See your profile"),
                ),
                const Divider(),
                const Text("Your shortcuts"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 60,
                      height: 60,
                     
                      child: Stack(alignment: Alignment.topLeft, children: [
                          Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://tse4.explicit.bing.net/th?id=OIP.OwjGOqZo_xrPUlv1cqd9kwHaHx&pid=Api&P=0&h=220"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Positioned(
                            bottom: 2,
                            right: 6,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.people_alt,size: 16,color: Colors.blue,),
                            )),
                      ]),
                    ),
                  ],
                ),

                const Text("   Arya"),
                const SizedBox(height: 20,),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                                backgroundColor: Color.fromARGB(174, 226, 224, 225),
                                radius: 20,
                                child: Icon(Icons.question_mark, color: Colors.black),),
                                SizedBox(width: 10),
                                Text("Help & support"),
                      ],
                    ),

                             Icon(Icons.expand_more_rounded),  
                                              
                                  
                  ],
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                                backgroundColor: Color.fromARGB(174, 226, 224, 225),
                                radius: 20,
                                child: Icon(Icons.settings, color: Colors.black),),
                                SizedBox(width: 10),
                                Text("Settings & privacy"), 
                      ],
                    ),
                         Icon(Icons.expand_more_rounded),                    
                  ],),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                                backgroundColor: Color.fromARGB(174, 226, 224, 225),
                                radius: 20,
                                child: Icon(Icons.add, color: Colors.black),),
                                SizedBox(width: 10),
                                Text("Also from Meta"),  
                      ],
                    ),
                      Icon(Icons.expand_more_rounded),               
                  ],),
                  const SizedBox(height: 20,),
                 ElevatedButton(
            onPressed: () { 
            }, 
            // ignore: sort_child_properties_last
            child: const Center(child: Text("Log out")),
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 168, 163, 168),
            ),),
              ],
            ),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              "fαcebook",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            // title: Image.network(
            //   "https://tse2.mm.bing.net/th?id=OIP.IJUhlN97BOP8tQv_2nK_0QHaEK&pid=Api&P=0&h=220",
            //   width: 100,height: 50,
            // ),
            backgroundColor: Colors.white,
            actions: [
              GestureDetector(
                onTap: () {
                  _key.currentState!.openDrawer();
                },
                child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(175, 246, 241, 244),
                  radius: 20,
                  child: Icon(Icons.add, color: Colors.black),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const CircleAvatar(
                backgroundColor: Color.fromARGB(175, 246, 241, 244),
                child: Icon(Icons.search, color: Colors.black),
              ),
              const SizedBox(
                width: 8,
              ),
              CircleAvatar(
                backgroundColor: const Color.fromARGB(175, 246, 241, 244),
                child: Image.asset(
                  "assets/chat.png",
                  width: 20,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.blue,
              tabs: [
                const Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                Tab(
                    icon: Image.asset(
                  "assets/video.png",
                  height: 30,
                )),
                Tab(
                    icon: Badge(
                        backgroundColor: Colors.red,
                        label: const Text("3"),
                        child: Image.asset(
                          "assets/users.png",
                          width: 50,
                          height: 30,
                        ))),
                Tab(
                  icon: Image.asset(
                    "assets/shop.png",
                    width: 50,
                    height: 30,
                  ),
                ),
                Tab(
                    icon: Badge(
                        backgroundColor: Colors.red,
                        label: const Text("25"),
                        child: Image.asset(
                          "assets/bell.png",
                          width: 50,
                          height: 30,
                        ))),
                Tab(
                  icon: IconButton(
                      onPressed: () {
                        _key.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
            ],
          )
          ),
    )
    );
  }
}
