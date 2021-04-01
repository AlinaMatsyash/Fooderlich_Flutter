import 'package:flutter/material.dart';
import '../api/mock_fooderlich_service.dart';
import 'package:fooderlich/components/components.dart';

class RecipesScreen extends StatelessWidget {
  final exploreService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: exploreService.getRecipes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return RecipesGridView(recipes: snapshot.data);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
