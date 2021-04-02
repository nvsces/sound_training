import 'package:flutter/material.dart';

class LessonPage extends StatefulWidget {
  LessonPage({Key key}) : super(key: key);

  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Text(
                'Описание урока. Разработка базы данных фонем для русскоговорящего сегмента.Комментарий: Расскажи про базу данных, которую ты парсил, откуда оня взялась, как ты разбивал слова на фонемы ...'),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
            ),
            Text('Степень корреляции :'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(child: Text('Назад'), onPressed: () {}),
                IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                RaisedButton(child: Text('Вперёд'), onPressed: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
