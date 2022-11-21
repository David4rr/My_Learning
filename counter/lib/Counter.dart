import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class counterPage extends StatefulWidget {
  const counterPage({Key? key}) : super(key: key);

  @override
  State<counterPage> createState() => _counterPageState();
}

class _counterPageState extends State<counterPage> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            counter.toString(),
            style: TextStyle(
              fontSize: 30 + double.parse(counter.toString()),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  if (counter != 1) {
                    setState(() {
                      counter--;
                    });
                  }
                  print(counter);
                },
                child: Icon(Icons.remove),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                  print(counter);
                },
                child: Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
