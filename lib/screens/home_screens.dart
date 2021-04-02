import 'package:flutter/material.dart';
import 'package:sound_training/screens/lesson_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  List<String> listItem = ['Уроки', 'Настройки'];

  _onTapLesson(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LessonScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          itemCount: listItem.length,
          itemBuilder: (context, i) => Card(
            child: ListTile(
              onTap: () => _onTapLesson(context),
              title: Text(listItem[i]),
            ),
          ),
        ),
      ),
    );
  }
}
