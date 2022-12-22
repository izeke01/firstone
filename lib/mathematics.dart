import 'package:flutter/material.dart';

class MathematicsPage extends StatelessWidget {
  const MathematicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: h * 0.25,
                width: w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/abacus.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.grey),
                child: const Center(
                  child: Text(
                    "",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: w * 0.019),
              Text(
                "Class",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: w * 0.25),
              const Text(
                "First Term",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.035),
          Row(
            children: [
              SizedBox(width: w * 0.03),
              const Text(
                "Scheme Of Work",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ListTile(
                  title: Text("Topic"),
                  subtitle: Text(
                    "No. of pages:xx , Time: xx:xx ",
                    maxLines: 2,
                  ),
                  isThreeLine: true,
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/abacus.jpg")),
                  trailing: Icon(Icons.menu_book_sharp, color: Colors.blue),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Topic"),
                  subtitle: Text(
                    "No. of pages:xx , Time: xx:xx ",
                    maxLines: 2,
                  ),
                  isThreeLine: true,
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/abacus.jpg")),
                  trailing: Icon(Icons.menu_book_sharp, color: Colors.blue),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: w * 0.019),
              Text(
                "Class",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: w * 0.25),
              const Text(
                "First Term",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.035),
          Row(
            children: [
              SizedBox(width: w * 0.03),
              const Text(
                "Scheme Of Work",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ListTile(
                  title: Text("Topic"),
                  subtitle: Text(
                    "No. of pages:xx , Time: xx:xx ",
                    maxLines: 2,
                  ),
                  isThreeLine: true,
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/abacus.jpg")),
                  trailing: Icon(Icons.menu_book_sharp, color: Colors.blue),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Topic"),
                  subtitle: Text(
                    "No. of pages:xx , Time: xx:xx ",
                    maxLines: 2,
                  ),
                  isThreeLine: true,
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/abacus.jpg")),
                  trailing: Icon(Icons.menu_book_sharp, color: Colors.blue),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
