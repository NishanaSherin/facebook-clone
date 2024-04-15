// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook_application/facebook_model/facebook_model.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<FacebookModel> storyList = [
    FacebookModel(
        name: "Create story",
        idimg: "nothing",
        story:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_5ypWM_BYPwArdEagKShnnVIFjQmIA7E7hw&s"),
    FacebookModel(
        name: "Nisha",
        idimg:
            "https://up.yimg.com/ib/th?id=OIP.aZp1p75jvtK9uYYqQ6eJzgHaHa&%3Bpid=Api&rs=1&c=1&qlt=95&w=122&h=122",
        story:
            "https://tse3.mm.bing.net/th?id=OIP.9RxloU44-6G9hn8f4KcR7gHaHa&pid=Api&P=0&h=220"),
    FacebookModel(
        name: "Ammu",
        idimg:
            "https://up.yimg.com/ib/th?id=OIP.xZCX54-5d-1KpAbyxchRxAHaHa&%3Bpid=Api&rs=1&c=1&qlt=95&w=120&h=120",
        story:
            "https://up.yimg.com/ib/th?id=OIP.pMbaUypN-gfPjxsY6R0gLAHaFj&%3Bpid=Api&rs=1&c=1&qlt=95&w=147&h=110"),
    FacebookModel(
        name: "Rider_girl",
        idimg:
            "https://tse4.explicit.bing.net/th?id=OIP.OwjGOqZo_xrPUlv1cqd9kwHaHx&pid=Api&P=0&h=220",
        story:
            "https://sp.yimg.com/ib/th?id=OIP.V9uIhqF5r3zRNomIY-UPHQHaE8&pid=Api&w=148&h=148&c=7&dpr=2&rs=1"),
    FacebookModel(
        name: "Faminz",
        idimg:
            "https://tse4.mm.bing.net/th?id=OIP.5esm3R3kqi-8ZfcK2aIhXQHaHa&pid=Api&P=0&h=220",
        story:
            "https://tse3.mm.bing.net/th?id=OIP.9RxloU44-6G9hn8f4KcR7gHaHa&pid=Api&P=0&h=220"),
  ];

  List<PostModel> postList = [
    PostModel(
        name: "Sharanya",
        imgId:
            "https://tse3.mm.bing.net/th?id=OIP.Bi8kchP-eDSf5H0C7Hsh-AAAAA&pid=Api&P=0&h=220",
        date: "Mar 25 .",
        postimg:
            "https://tse3.mm.bing.net/th?id=OIP.ikTeuwl45LN8sLrv5GmAgAHaEo&pid=Api&P=0&h=220",
        caption: "Hey...How are You?🙌🏻",
        likes: "30k",
        comments: "26 comments"),
    PostModel(
        name: "Arathi",
        imgId:
            "https://tse3.mm.bing.net/th?id=OIP.iqclnL8H-qZ6Hd9yoFRxwgHaG0&pid=Api&P=0&h=220",
        date: "Feb 28 .",
        postimg:
            "https://tse2.mm.bing.net/th?id=OIP.isryqkpdcQ-3Jd1jeGVoegHaFu&pid=Api&P=0&h=220",
        caption: "Happy Children's Day🥰",
        likes: "Sharanya and 48 others",
        comments: ""),
    PostModel(
        name: "LibzyArt",
        imgId:
            "https://tse4.explicit.bing.net/th?id=OIP.QJflWTxmsPT-yJcHCnabEwHaHk&pid=Api&P=0&h=220",
        date: "Jan 01 .",
        postimg:
            "https://tse3.mm.bing.net/th?id=OIP.hkd2werxLHsVCVFA-YjtEgHaEp&pid=Api&P=0&h=220",
        caption: "Happy Women's Day😍",
        likes: "28k",
        comments: "1 comment"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(235, 214, 211, 211),
        body: SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(5),
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
                      title: const TextField(
                        decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: "Write something here... ",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.0))),
                        ),
                        style: TextStyle(height: .5),
                      ),
                      trailing: Image.asset(
                        "assets/photos.png",
                        width: 30,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 220,
                  //width: 380,
                  color: Colors.white,
                  child: ListView.builder(
                    itemBuilder: (context, index2) {
                      FacebookModel stry = storyList[index2];
                        
                      return index2 == 0
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 140,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: NetworkImage(stry.story),
                                          fit: BoxFit.fill,
                                        ),borderRadius: BorderRadius.circular(7)),
                                      ),
                                    ),
                        
                                    Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 70,
                                          ),
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration:  BoxDecoration(
                                             
                                              shape: BoxShape.circle,
                                              image: const DecorationImage(
                                                image:
                                                    AssetImage("assets/plus.png"),
                                                fit: BoxFit.cover,
                                              ),
                                              border: Border.all(color: Colors.white,width: 4)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // ignore: sized_box_for_whitespace
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      // ignore: sized_box_for_whitespace
                                      child: Container(
                                        height: 30,
                                        child: Text(stry.name),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                // height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(stry.story),
                                      fit: BoxFit.fill),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: NetworkImage(stry.idimg),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        stry.name,
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                    },
                    itemCount: storyList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    PostModel post = postList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                child: Image.network(
                                  post.imgId ??
                                      "https://tse3.mm.bing.net/th?id=OIP.Bi8kchP-eDSf5H0C7Hsh-AAAAA&pid=Api&P=0&h=220",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              title: Text(
                                post.name ?? "",
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    post.date ?? "",
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.groups,
                                    size: 20,
                                  ),
                                ],
                              ),
                              // ignore: sized_box_for_whitespace
                              trailing: Container(
                                width: 100,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.more_horiz),
                                    Icon(Icons.close),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              post.caption ?? "",
                              style: const TextStyle(fontSize: 15),
                            ),
                            Image.network(
                              post.postimg ?? "",
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/thumbs-down.png",
                                        width: 20,
                                        height: 20,
                                      ),
                                      Text(post.likes ?? "",
                                          style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(post.comments ?? "",
                                          style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/like.png",
                                        width: 20,
                                        height: 20,
                                      ),
                                      const SizedBox(width: 3),
                                      const Text("Like",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/comment.png",
                                        width: 20,
                                        height: 20,
                                      ),
                                      const SizedBox(width: 3),
                                      const Text("Comment",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset("assets/share.png",
                                          width: 20, height: 20),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const Text("Share",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: postList.length,
                ),
              ],
            )));
  }
}
