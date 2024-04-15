import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: ListView(
          children:  [
            DrawerHeader(
                child: Column(
              children: [
                const ListTile(
                  title: Text(
                    "Menu",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  trailing: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(175, 246, 241, 244),
                        radius: 20,
                        child: Icon(Icons.settings, color: Colors.black),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(175, 246, 241, 244),
                        radius: 20,
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading:  Container(
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
              ],
            )),
            const Text("Your shortcuts"),
            ListTile(
              leading:  Container(
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
            ),
             const Text("name id"),
             //GridView(gridDelegate: Sli)

          ],
        ),
      ),
    );
  }
}
