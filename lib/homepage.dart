
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;
 get _formKey => GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("login ")),
        backgroundColor: Colors.green,
        elevation: 10.0,
        automaticallyImplyLeading: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFzhsnlVVQ1PCnMjdoBqFtQJILUpyPKVEGqg&usqp=CAU"),),
         
          Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: const InputDecoration(
              icon: Icon(Icons.email),

              labelText: 'email*',
  ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: const InputDecoration(
              icon: Icon(Icons.lock),

              labelText: 'Password*',
  ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: ElevatedButton(
                    
                    
                    onPressed: () {  },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
          // Add TextFormFields and ElevatedButton here.
        ],
      ),
    )
         
        ],
      )),
    );
  }
}
