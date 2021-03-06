import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget _buildNote(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: <Widget>[
      ListTile(
        title: const Text('Note Title'),
        subtitle: const Text('June 30, 2022 - High'),
        trailing: Checkbox(
        onChanged: (value){
          print(value);
        },
        activeColor: Theme.of(context).primaryColor,
        value: true,
           ),
       ),
          const Divider(height: 5.0, color: Colors.deepPurple, thickness: 2.0,),
        ],
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 80.0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
    if (index == 0) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text(
          'My Notes',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0,),
        Text(
          '0 - 10',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
    );
    }
    return _buildNote(index);
    }

    ),
    );
  }
}
