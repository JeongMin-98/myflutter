import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});
    Widget build(BuildContext context){
      Widget titleSection = Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Machine Learning',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'ML',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            const Text('41'),

          ],
        ),

      );
      Color color = Theme.of(context).primaryColor;
      Widget buttonSection = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.abc, 'More Info'),
          _buildButtonColumn(color, Icons.share, 'Share')
        ],
      );
      Widget textSection = const Padding(
        padding: EdgeInsets.all(32),
        child: Text(
          '기계 학습 또는 머신 러닝은 경험을 통해 자동으로 개선하는 컴퓨터 알고리즘의 연구이다.'
              ' 인공지능의 한 분야로 간주된다. '
              '컴퓨터가 학습할 수 있도록 하는 알고리즘과 기술을 개발하는 분야이다.',
          softWrap: true,
        ),
      );
      return MaterialApp(
        title: "Flutter Layout demo",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Machine Learning"),

          ),
          body: Column(
            children: [
              Image.asset(
                'images/ml.png',
                width: 640,
                height: 320,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ),
      );
    }
    Column _buildButtonColumn(Color color, IconData icon, String label){
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color,),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );
    }

}
