import 'package:flutter/material.dart';

//  We require this so based on this information we'll
//  create all the items for the "category" screen or
//  "GridView".
import '../dummy-data.dart';
import '../category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MUY meal."),
      ),
      body: GridView(
        //  Now, we want to provide padding to all the children widgets
        //  of "GridView", this can be made easy since "GridView" itself
        //  provide us "padding" argument.
        padding: const EdgeInsets.all(25),
        //  What below property does is, "Sliver" are automatically
        //  the scrollable areas of the screen, "gridDelegate" for
        //  "Grid" takes care about structuring, and
        //  "WithMaxCrossAxisExtent" is an pre-configured class
        //  which allows us to define max width of each grid item
        //  & then it'll create as many columns as we can fit items
        //  with that provided-width next to each other.
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //  With following property we define
          //  maximum extent or width of the tiles.
          //  To it's value we provide "200 pixels"
          //  now, it's depend on device size hown
          //  many items we can get in the grid.
          //  Meaning, if we have device with width
          //  of "500 pixels" then, we'll have one
          //  item per row, if device width is "500 pixels"
          //  then, two items will sit side by side.
          maxCrossAxisExtent: 200,
          //  With following property we define how
          //  items should be sized regarding their
          //  height and width relation, the value we
          //  provide to it means, for 200-width the
          //  item would take 300-height on screen.
          childAspectRatio: 3 / 2,
          //  Below properties define the spacing or
          //  distance between our columns & rows.
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        //  The children for our "Grid" would be our
        //  "categories" coming from "Categories" class.
        //  In order to provide "children" to our
        //  "categories_screen.dart" file, we need to
        //  define an "Categories" class that define the
        //  data for our application.
        //  We need to work on "category items" here,
        //  we need to output our category items here.
        //  We have already got data defined by "Category"
        //  class but in order to show that data on screen
        //  we need widgets.
        //  And for that we could certainly add structure
        //  for each item here and then, manually map our
        //  list of categories into that structure. But this
        //  time we would rather create an seperate file.
        //  Which we named "category_item.dart" file having an
        //  "CategoryItem" widget.
        //  Since, we have the layout of widget to be shown and
        //  data to be shown in different files, now we need to
        //  do is just take our list of data and map it into an
        //  list of widget. Therefore, we use "map" function which
        //  provide us an function that executes on every item in
        //  that "DUMMY_CATEGORIES" list and that function therefore,
        //  gets our category data which we provide custom name of
        //  our own as "CatData" & it should return an widget which
        //  we want to render for every category in "DUMMY_CATEGORIES"
        //  and we know that widget is "CategoryItems".
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.color,
                ))
            .toList(),
      ),
    );
  }
}
