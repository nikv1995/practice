import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikunj_project/advance_flutter/fetchdata_from_internet/model.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserData> DataStore = [];

  Future getdata() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> element in data) {
        DataStore.add(UserData.fromJson(element));
      }
    } else if (response.statusCode == 404) {
      CircularProgressIndicator();
    }

    return DataStore;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data from Internet'),
      ),
      body: FutureBuilder(
        future: getdata(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(height: 10, thickness: 1),
              itemCount: DataStore.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('userId : ${DataStore[index].userId}'),
                      Text('id : ${DataStore[index].id}'),
                      Text('title : ${DataStore[index].title}', maxLines: 1),
                      Text('body : ${DataStore[index].body}', maxLines: 2),
                    ],
                  ),
                );
              },
            );
          } else {
            return LinearProgressIndicator();
          }
        },
      ),
    );
  }
}
