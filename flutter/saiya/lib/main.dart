import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';
import 'dart:async';
import './views/screens/home_screen.dart';

Future<Data> fetchData() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  if (response.statusCode == 200) {
    return Data.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Unexpected error occured!');
  }
}

class Data {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Data(this.userId, this.id, this.title, this.completed);

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(json['userId'], json['id'], json['title'], json['completed']);
  }

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'title': title,
        'id': id,
        'completed': completed,
      };
}

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTTP Request',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saiya',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      //home: const MyHomePage(title: 'Saiya Home Page'),
      home: const MyDataTable(),
    );
  }
}

class MyDataTable extends StatefulWidget {
  const MyDataTable({Key? key}) : super(key: key);

  @override
  State<MyDataTable> createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  Future<Data>? futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
    log('data: $futureData');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
      body: SafeArea(
        child: FutureBuilder<Data>(
            future: futureData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
        ),
               ),
    );
  }
}
