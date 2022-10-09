import 'package:flutter/material.dart';

import '../../models/model.dart';
import '../../controllers/network_helper.dart';

//
class HomeScreen extends StatefulWidget {
  static const String title = "Employees";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(HomeScreen.title),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Sending Message"),
            ));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.comment),
            tooltip: 'Comment',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Sending Message Button Comment!!"),
              ));
            },
          ), //IconButton
        ], //<Widget>[]
      ),
      body: Center(
        child: _employeesData()
      )
    );
  }
}

FutureBuilder _employeesData(){
  return FutureBuilder<List<Employees>>(
    future: GetEmployee().getEmployees(),
    builder: (BuildContext context, AsyncSnapshot<List<Employees>> snapshot){
      if (snapshot.hasData) {
        List<Employees>? data = snapshot.data;
        return _employees(data);
      } else if (snapshot.hasError) {
        return Text("Saiya ${snapshot.error}");
      }
      return const CircularProgressIndicator();
    },
  );
}

ListView _employees(data) {
  return ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, index) {
      return Card(
        child: _tile(data[index].employeeName, data[index].employeeSalary.toString(), Icons.work)
      );
    }
  );
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        ),
    subtitle: Text(subtitle.toString()),
    leading: Icon(
      icon,
      color: Colors.teal[500],
    ),
  );
}
