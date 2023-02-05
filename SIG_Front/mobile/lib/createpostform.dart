import 'dart:html';

import 'package:flutter/material.dart';

class Post {
  final String title;
  final String body;

  Post({required this.title, required this.body});
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _titleController = TextEditingController();
  final _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Create your Post"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(70),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Add Description'),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: _bodyController,
                decoration: InputDecoration(labelText: 'Body'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
              ),
              child: GestureDetector(
                onTap: () {
                  //Navigator.pop(context);
                  // do something on button press
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
