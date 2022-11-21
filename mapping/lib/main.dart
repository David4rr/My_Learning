import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
      {
        "Name": "David",
        "Age": "19",
        "Favcolor": [
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple"
        ],
      },
      {
        "Name": "Akbar",
        "Age": "20",
        "Favcolor": ["Red", "Yellow", "Jingga"],
      },
      {
        "Name": "David",
        "Age": "19",
        "Favcolor": [
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple"
        ],
      },
      {
        "Name": "Akbar",
        "Age": "20",
        "Favcolor": ["Red", "Yellow", "Jingga"],
      },
      {
        "Name": "David",
        "Age": "19",
        "Favcolor": [
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple"
        ],
      },
      {
        "Name": "Akbar",
        "Age": "20",
        "Favcolor": ["Red", "Yellow", "Jingga"],
      },
      {
        "Name": "David",
        "Age": "19",
        "Favcolor": [
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple"
        ],
      },
      {
        "Name": "Akbar",
        "Age": "20",
        "Favcolor": ["Red", "Yellow", "Jingga"],
      },
      {
        "Name": "David",
        "Age": "19",
        "Favcolor": [
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple",
          "Green",
          "Blue",
          "Purple"
        ],
      },
      {
        "Name": "Akbar",
        "Age": "20",
        "Favcolor": ["Red", "Yellow", "Jingga"],
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            title: Text(
          "Hmmm...",
        )),
        body: ListView(
          children: myList.map((data) {
            List myFavcolor = data["Favcolor"];
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text(
                              "Age: ${data['Age']}",
                            ),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myFavcolor.map((color) {
                          return Container(
                            color: Colors.blue,
                            margin: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 8,
                            ),
                            padding: EdgeInsets.all(5),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
