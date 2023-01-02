import 'package:flutter/material.dart';
import 'package:sorajf/screen/seting.dart';

void main() async {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Myapp()));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(221, 49, 49, 49),
          title: Text("List Tile")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 450,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: <Color>[Colors.purpleAccent, Colors.purple],
                    )),
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          isThreeLine: false,
                          subtitle: Text(
                            "this is List Tile Widgets ${index + 1}",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          leading: const Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 255, 254, 254),
                          ),
                          title: Text(
                            "List ${index + 1}",
                            style: TextStyle(
                                color: Color.fromARGB(255, 239, 242, 243)),
                          ),
                          tileColor: Color.fromARGB(255, 248, 244, 244),
                          trailing: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.red,
                child: Text("setting"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("setting"),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.settings),
                label: Text("setting"),
              ),
              TextButton(onPressed: () {}, child: Text("this is text button")),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Setting())));
                  },
                  icon: Icon(Icons.settings)),
              Chip(
                label: Text("heloooo"),
                avatar: CircleAvatar(backgroundColor: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
