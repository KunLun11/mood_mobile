import 'package:flutter/material.dart';


class Mood {
  String name;
  int number;
  Mood(this.name, this.number);
}

final List<Mood> mood = <Mood>[
  Mood('Хорошо', 8), Mood('Отлично', 10), Mood('Очень плохо', 1)
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Center(child: Text('Mood')),
        ),
        floatingActionButton: FloatingActionButton(
           onPressed: () {},
           backgroundColor: Colors.green,
           child: Icon(Icons.add),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: mood.length,
            separatorBuilder: (BuildContext context, int index) =>
                Divider(height: 20, color: Colors.grey,  thickness: 2,),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(mood[index].name, style: TextStyle(fontSize: 22)),
                      Text("Состояние оценивается на: ${mood[index].number}", style: TextStyle(fontSize: 18))
                  ],
                )
              );
            }
          ),
        ),
      );
  }
}

