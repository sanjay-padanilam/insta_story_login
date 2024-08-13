import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myimages = [
      {
        "name": "sanju",
        "dp":
            "https://images.pexels.com/photos/20427308/pexels-photo-20427308/free-photo-of-entrance-of-hotel-le-bellevue-in-biarritza.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/19399332/pexels-photo-19399332/free-photo-of-a-street-warehouse.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      },
      {
        "name": "alex",
        "dp":
            "https://images.pexels.com/photos/25561067/pexels-photo-25561067/free-photo-of-white-flowers-in-nature.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/18704286/pexels-photo-18704286/free-photo-of-man-sitting-on-a-chair-under-a-tree-and-reading-a-book.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      },
      {
        "name": "maria",
        "dp":
            "https://images.pexels.com/photos/12345678/pexels-photo-12345678/free-photo-of-sunset-over-mountains.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/87654321/pexels-photo-87654321/free-photo-of-beach-during-sunset.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      },
      {
        "name": "john",
        "dp":
            "https://images.pexels.com/photos/34567890/pexels-photo-34567890/free-photo-of-cityscape-at-night.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/09876543/pexels-photo-09876543/free-photo-of-forest-pathway.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      },
      {
        "name": "emma",
        "dp":
            "https://images.pexels.com/photos/56789012/pexels-photo-56789012/free-photo-of-rainbow-over-mountains.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/11223344/pexels-photo-11223344/free-photo-of-sunset-over-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      },
      {
        "name": "lucas",
        "dp":
            "https://images.pexels.com/photos/65432109/pexels-photo-65432109/free-photo-of-mountain-lake.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/12121212/pexels-photo-12121212/free-photo-of-city-skyline-at-dusk.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      }
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: PageView.builder(
            itemCount: myimages.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(myimages[index]["bg"]))),
              child: Column(
                children: [
                  Divider(
                    color: Colors.white,
                    thickness: 3,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myimages[index]["dp"]),
                    ),
                    title: Text(
                      "Username",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "sponserd",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(color: Colors.white, width: 1.5)),
                          child: Text(
                            "Send message",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.favorite_outline,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.send,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
