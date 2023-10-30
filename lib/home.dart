import 'package:flutter/material.dart';
import 'SnapDecorationStory.dart';

class HomePage extends StatelessWidget {
  final List<SnapGram> data = [
    SnapGram("andika", 'https://i.pravatar.cc/150?img=5'),
    SnapGram("jacob", 'https://i.pravatar.cc/150?img=3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR ------------------------------------------------------------------>

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: new Icon(Icons.add_box_outlined),
            color: Colors.black,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: new Icon(Icons.favorite_border_rounded),
            color: Colors.black,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: new Icon(Icons.messenger_outline_rounded),
            color: Colors.black,
            iconSize: 30,
          )
        ],
      ),

      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Stack(
                  children: [
                    backDecoration(),
                    MyPicture()
                  ],
                ),
                Container(
                  
                )
              ],
            ),
          ),
          // Container(
          //   child: Column(
          //     children: [
          //       ListView.builder(
          //         itemCount: data.length,
          //         scrollDirection: Axis.horizontal,
          //         shrinkWrap: true,
          //         itemBuilder: (context, index) {
          //           return Container(
          //             child: Column(
          //               children: [
          //                 Image(image: NetworkImage('https://i.pravatar.cc/150?img=3')),
          //                 Text("andika")
          //               ],
          //             ),
          //           );
          //         }
          //         ),
          //       ],
          //   ),
          // ),

          // ------------------------------>
          Container(
            child: Column(
              children: [],
            ),
          ),
        ],

        // SNAPGRAM ------------------------------------------------------------------>

        // child: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     // User SnapGram
        //     Container(
        //       child: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Row(
        //           children: [
        //             Container(
        //               child: Column(
        //               children: [
        //                 ClipOval(
        //                   child: Image(
        //                     image: NetworkImage('https://i.pravatar.cc/150?img=3'),
        //                     height: 60,
        //                   ),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Text("Andika"),
        //                 )
        //               ],
        //             ),
        //             ),

        //             // SnapGram Following

        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Container(
        //                 child: Column(
        //                 children: [
        //                   ClipOval(
        //                     child: Image(
        //                       image: NetworkImage('https://i.pravatar.cc/150?img=5'),
        //                       height: 60,
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Text("Aisyah"),
        //                   )
        //                 ],
        //               ),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

class MyPicture extends StatelessWidget {
  const MyPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
        border: Border.all(
          color: Colors.white,
          width: 3
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/picture.jpg'))
      ),
    );
  }
}



class SnapGram {
  String Name;
  String ProfilUrl;

  SnapGram(this.Name, this.ProfilUrl);
}
