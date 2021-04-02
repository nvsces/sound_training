import 'package:flutter/material.dart';
import 'package:sound_training/screens/lesson_page.dart';

class LessonScreen extends StatelessWidget {
  LessonScreen({Key key}) : super(key: key);

  List<String> listLesson = [
    'Урок 1',
    'Урок 2',
    'Урок 3',
    'Урок 4',
    'Урок 5',
    'Урок 6',
    'Урок 7',
    'Урок 8'
  ];

  _onTapLesson(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LessonPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          itemCount: listLesson.length,
          itemBuilder: (context, i) => Card(
            child: ListTile(
              onTap: () => _onTapLesson(context),
              title: Text(listLesson[i]),
            ),
          ),
        ),
      ),
    );
  }
}
