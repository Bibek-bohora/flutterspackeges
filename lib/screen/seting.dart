import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:sorajf/screen/photo_viewer.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  _getData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(url);
    return (jsonDecode(response.body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Seting Screen",
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0.1,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => PhotScreen(
                              "https://imgs.search.brave.com/w-I8o7M4XF0Cu-WlgIsPXe4Xmj-mpZBti5RqVRLWn4Y/rs:fit:1200:674:1/g:ce/aHR0cHM6Ly9taXJv/Lm1lZGl1bS5jb20v/bWF4LzEyMDAvMSpx/VXdoeWlFWDB1YnI3/ZXpUajg1WkdRLmpw/ZWc"))));
                },
                child: Image.network(
                    "https://imgs.search.brave.com/w-I8o7M4XF0Cu-WlgIsPXe4Xmj-mpZBti5RqVRLWn4Y/rs:fit:1200:674:1/g:ce/aHR0cHM6Ly9taXJv/Lm1lZGl1bS5jb20v/bWF4LzEyMDAvMSpx/VXdoeWlFWDB1YnI3/ZXpUajg1WkdRLmpw/ZWc",
                    loadingBuilder: (context, child, loadingProgress) =>
                        (loadingProgress == null)
                            ? child
                            : CircularProgressIndicator(
                                value: (loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!) *
                                    100,
                              ))),
            SizedBox(
              height: 10,
            ),
            Center(
                child: FutureBuilder(
              future: _getData(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(children: [
                    ...snapshot.data.map((e) => ListTile(
                        isThreeLine: false,
                        textColor: Colors.blue,
                        dense: false,
                        selectedColor: Colors.red,
                        leading: Text("index"),
                        title: Text(e["name"].toString())))
                  ]);
                } else {
                  return CircularProgressIndicator();
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
