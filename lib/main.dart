import 'package:WTApp/course/course_screen.dart';
import 'package:flutter/material.dart';
import 'category/categorie_screen.dart';
import 'course/course_screen.dart';
import 'tutorial/tutorial_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WTEDU',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(242, 245, 245, 1),
        fontFamily: 'Ubuntu',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => Categories(),
        CategoryScreen.routeName: (ctx) => CategoryScreen(),
        CourseScreen.routeName: (ctx) => CourseScreen(),
      },
    );
  }
}
