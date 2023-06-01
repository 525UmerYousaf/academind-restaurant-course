import 'package:flutter/material.dart';

import './screens/categories_screen.dart';

//  For now, we will focus on how to tell Flutter that we want
//  "categories_screen.dart" file CategoriesScreen as an starting
//  screen of our application. We do that in "main.dart" file where
//  we set the root app widget (in our case it is "MaterialApp"),
//  we have the "home" argument which we provide and that points to
//  widget that should be loaded first when our app starts. So, here
//  we will now point our "CategoriesScreen". Now, since we no longer
//  require the "HomePage" screen or widget any-more so we would just
//  delete and we'll return our "CategoriesScreen" to home but in
//  order to do so, we have to first convert the "GridView" as an
//  body of "Scaffold" and return an "Scaffold" from that file not
//  an "GridView" widget otherwise app wouldn't work as expected.
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MUY Meals",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 255, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: const CategoriesScreen(),
    );
  }
}

//  All done till Video # 163.