//  Since, the "categories screen" is all setup and
//  now we want to move to another new screen whenevr
//  user select any of the category from category screen
//  so for that purpose we created this file.
//  In easy wods, this will be screen which will show
//  us meal for any category we choose.
import 'package:flutter/material.dart';

//  We have created an seperate screen but now we have
//  to first understand how transition is possible to
//  this screen from Category-Screen. If we check it
//  closely, then we will see that Category-Screen has
//  "GridView" as it's child which further has "CategoryItem"
//  as it's children and we technically want to tap on "CategoryItem"
//  to shift to this screen. So we went there now.

//  Now, since we have successfully transferred from
//  "CategoryScreen" to "CategoryMealScreen", it would
//  be much more nice if we can also pass data so we can
//  display right data and category name on this screen,
//  instead of hard-coded data. In order to show the category
//  id and name based on the category item we have selected
//  we have to create 2 variables. Which means whenever we
//  create an "CategoryMealScreen" we need to forward the info
//  for these variables. So, we need to provide this information from
//  "CategoryItem" class which is responsible for creating this screen.
class CategoryMealScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  const CategoryMealScreen(
    this.categoryId,
    this.categoryTitle,
  );

  @override
  Widget build(BuildContext context) {
    //  We are right now only returning "Center" widget bcz
    //  right-now we're gonna see how we're transisted to
    //  another screen whnever user select any category from
    //  category screen.
    return Scaffold(
      appBar: AppBar(
        //  For now, below we are showing hard-coded text
        //  but soon we will show the name of category selected
        //  here.
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          "The recipies for selected category are:",
        ),
      ),
    );
  }
}
