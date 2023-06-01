import 'package:flutter/material.dart';
import './category_meal_screen.dart';

//  It will output single CategoryItem because in
//  our grid of categories. This describes how single
//  item should look like in an GridView of
//  "categories_screen.dart" file.
class CategoryItem extends StatelessWidget {
  //  First, we need to define what kind of data
  //  does this widget itself expects, since we
  //  want to display the "color" and "title" of
  //  each category inside GridView so we'll pass
  //  it here.
  //  In order to pass info to newly created class
  //  we need to create "id" field here as well.
  //  Since, we now also do require an "id" of category
  //  so, we have to provide it at place where we created
  //  "CategoryItem" for first itme ("categories_screen.dart").
  final String id;
  final String title;
  final Color color;
  const CategoryItem(
    this.id,
    this.title,
    this.color,
  );

  void selectCatagory(BuildContext ctx) {
    //  In here, we would use tool Flutter provide
    //  us to change the page.
    //  "Navigator" is an class that help us to navigate
    //  among various screens. "Navigator" takes an "context"
    //  bcz it's very important as it hold information about
    //  widget's position on the widget tree and this info
    //  is used by compiler to load another screen or page on
    //  top of widget we are currently on.
    //  Now after passing the "context" we can now use methods
    //  "push" and "pop" here, but thing is we cannot use "pop"
    //  suince we don't want to remove the page, we want to
    //  load the page so we'll use "push" here. In flutter, we
    //  have different types of "push" method as well.
    //  We use "pushReplacement" when we want to load new page
    //  by removing the below or current page so there will be
    //  single page on screen, and that means we'll not be able
    //  to go back to previous page bcz we have already deleted
    //  it (page we are coming from).
    //  Inside "push" function we'll not directly call the
    //  "CategoryMealScreen" inside method instead we'll call the
    //  "MaterialPgaeRoute" within the function. It is an class
    //  which we have to instantiate by adding parenthesis in the
    //  end. We need this widget as an wrapper to handle animation
    //  from old page to new page
    Navigator.of(ctx).push(
      MaterialPageRoute(
        //  "MaterialPageRoute" further takes an "builder"
        //  which automatically takes an "context" since in our
        //  case we don't need it so we use underscore instead.
        builder: (_) {
          return CategoryMealScreen(id, title);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //  Now, what we want is we want the user to be able to
    //  tap on this below "Container" which would lead user to
    //  "category_meal_screen.dart" file, but problem here is
    //  "Container()" itself doesn't has any "onPressed" function.
    //  So, we wrap our "Container" with "GestureDetector" so we can
    //  execute functions like "onTap", "onDoubleTap" etc, whenever
    //  user interact with the UI. Now, since we want an visual-feedback
    //  whenever user interacts with the widget, So instead of "GestureDetector"
    //  we would use an "Inkwell", it's basically an "GestureDetector" with an
    //  ripple-effect whenever user press it.
    return InkWell(
      //  Below we call the function without parenthesis so,
      //  we don't have to call the function when it's parse
      //  but only when user tap on the "Container" which is
      //  child here.
      //  Now, since we need to pass "context" from our build-method
      //  to "selectCategory" method so we'll have to pass the context
      //  by calling "selectCategory" method anonymously
      onTap: () => selectCatagory(context),
      splashColor: Theme.of(context).primaryColor,
      //  Below is "borderRadius" for "InkWell" and that
      //  should match "borderRadius" of "Container" (child)
      //  so we can have soothing ripple effect on our screen.
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          //  Below, we cannot use "const" bcz by default
          //  "BorderRadius.circular" is not marked as "const".
          //  Therefore, using "const" here would show us an error.
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          //  With "Theme.of(context)" we access the global
          //  theme of our application.
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
