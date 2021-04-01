import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:fooderlich/models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset('assets/fooderlich_assets/empty_list.png'),
            ),
            SizedBox(height: 8.0),
            Text(
              'No Groceries',
              style: TextStyle(fontSize: 21.0),
            ),
            SizedBox(height: 16),
            Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write the down!',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
                textColor: Colors.white,
                child: Text('Browse Recipes'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.green,
                onPressed: () {
                  Provider.of<TabManager>(context, listen: false).goToRecipes();
                })
          ],
        ),
      ),
    );
  }
}
