import 'package:flutter/material.dart';
import 'package:isaac1/user.dart';
import 'NavDrawer.dart';
import 'user_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return Container(
          child: Row(
        children: [
          Text("Good morning",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          Icon(
            Icons.wb_sunny_outlined,
            color: Colors.amber,
          )
        ],
      ));
    }
    if (hour < 17) {
      return Container(
          child: Row(
        children: [
          Text("Good Afternoon",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black)),
          Icon(
            Icons.sunny,
            color: Colors.amber,
          )
        ],
      ));
    }
    return Container(
        child: Row(
      children: [
        Text("Good Evening",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        Icon(
          Icons.night_shelter,
          color: Colors.amber,
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      drawer: NavigationDrawer(),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return Padding(
              padding: EdgeInsets.only(left: 0, top: 5),
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Scaffold.of(context).openDrawer(),
                        icon: Icon(
                          Icons.apps,
                          size: 30,
                          color: Colors.black,
                        )),
                  ],
                ),
              ));
        }),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: w * 0.32,
                ),
                CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://lh3.googleusercontent.com/p/AF1QipPClWBwdSfAkWjvaQJwYuZAcHpI8BJiM8JSKvI4=w960-h960-n-o-v1'),
                    radius: 32,
                    backgroundColor: Colors.red)
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: w * 0.03,
                ),
                greeting()
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: w * 0.07,
                ),
                buildName(user),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Image(
                image: AssetImage("assets/images/well.png"),
                fit: BoxFit.fill,
              ),
              height: h * 0.2,
              width: w * 0.7,
            ),
            Row(
              children: [
                SizedBox(width: w * 0.05),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "Recommended Subjects",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(width: w * 0.21),
                    ],
                  ),
                  color: Colors.transparent,
                  width: w * 0.9,
                  height: h * 0.04,
                ),
              ],
            ),
            SizedBox(height: h * 0.012),
            SingleChildScrollView(
              padding: EdgeInsets.all(8.0),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: w * 0.05),
                  Material(
                    elevation: 5,
                    child: Container(
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            child: Image(
                                image: AssetImage("assets/images/person.jpg"),
                                alignment: Alignment.topCenter)),
                        SizedBox(height: h * 0.006),
                        Row(
                          children: [
                            SizedBox(width: w * 0.03),
                            Text(
                              "Mathematics",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.017),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Text(
                              "No. Of Topics: ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "51",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 2, 96, 173),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.009),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Text(
                              "No. Of Terms: ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(width: w * 0.03),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: w * 0.3),
                            Icon(Icons.circle, size: 12, color: Colors.green)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: w * 0.03),
                          ],
                        ),
                        SizedBox(height: h * 0.003),
                        Row(
                          children: [
                            SizedBox(width: w * 0.03),
                          ],
                        )
                      ]),
                      width: w * 0.38,
                      height: h * 0.26,
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.0, color: Colors.grey.shade300),
                        color: Colors.blue[100],
                      ),
                    ),
                  ),
                  SizedBox(width: w * 0.05),
                  Material(
                    elevation: 5,
                    child: Container(
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            child: Image(
                                image: AssetImage("assets/images/person.jpg"),
                                alignment: Alignment.topCenter)),
                        SizedBox(height: h * 0.006),
                        Row(
                          children: [
                            SizedBox(width: w * 0.03),
                            Text(
                              "Mathematics",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.017),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Text(
                              "No. Of Topics: ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "51",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 2, 96, 173),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(height: h * 0.009),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Text(
                              "No. Of Terms: ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(width: w * 0.03),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: w * 0.3),
                            Icon(Icons.circle, size: 12, color: Colors.green)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: w * 0.03),
                          ],
                        ),
                        SizedBox(height: h * 0.003),
                        Row(
                          children: [
                            SizedBox(width: w * 0.03),
                          ],
                        )
                      ]),
                      width: w * 0.38,
                      height: h * 0.26,
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.0, color: Colors.grey.shade300),
                        color: Colors.blue[100],
                      ),
                    ),
                  ),
                  SizedBox(width: w * 0.05),
                  GestureDetector(
                    child: Material(
                      elevation: 5,
                      child: Container(
                        child: Column(children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              child: Image(
                                  image: AssetImage("assets/images/person.jpg"),
                                  alignment: Alignment.topCenter)),
                          SizedBox(height: h * 0.006),
                          Row(
                            children: [
                              SizedBox(width: w * 0.03),
                              Text(
                                "Mathematics",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          SizedBox(height: h * 0.017),
                          Row(
                            children: [
                              SizedBox(
                                width: w * 0.02,
                              ),
                              Text(
                                "No. Of Topics: ",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                "51",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 2, 96, 173),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          SizedBox(height: h * 0.009),
                          Row(
                            children: [
                              SizedBox(
                                width: w * 0.02,
                              ),
                              Text(
                                "No. Of Terms: ",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(width: w * 0.03),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: w * 0.3),
                              Icon(Icons.circle, size: 12, color: Colors.green)
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: w * 0.03),
                            ],
                          ),
                          SizedBox(height: h * 0.003),
                          Row(
                            children: [
                              SizedBox(width: w * 0.03),
                            ],
                          )
                        ]),
                        width: w * 0.38,
                        height: h * 0.26,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0, color: Colors.grey.shade300),
                          color: Colors.blue[100],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.name,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );
}



//Container(
//child: Row(
//children[
//Text("Good morning",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)))
//Icon(Icons.moon)
//]
//)
//);