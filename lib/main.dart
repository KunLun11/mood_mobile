import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(20),
                child: Center(child: Text('Header')),
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                color: Colors.green,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(child: Text('Quote Card')),
              ),
              SizedBox(height: 20),
              Container(
                height: 140,
                color: Colors.orange,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(child: Text('Mood Cards')),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
