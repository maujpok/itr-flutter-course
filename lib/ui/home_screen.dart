import 'package:flutter/material.dart';
import 'package:itr_course_app/data/static/login_students.dart';
import 'package:itr_course_app/ui/common/widgets/custom_button.dart';
import 'package:itr_course_app/ui/list_view_horizontal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ITR Flutter'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ListButtonsHorizontal(),
            const SizedBox(height: 20),
            _buildRowWithOverflow(context),
            const SizedBox(height: 20),
            const GridViewLoginButtons()
          ],
        ));
  }

  Row _buildRowWithOverflow(BuildContext context) {
    // aca ejecuto la logica para convertir los USD a EUR
    return Row(
      children: items
          .map(
            (e) => SizedBox(
              width: 67,
              child: NavigationButton(
                btnTitle: e.name,
                loginWidget: e.loginWidget,
              ),
            ),
          )
          .toList(),
    );
  }
}

class GridViewLoginButtons extends StatelessWidget {
  const GridViewLoginButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 100,
          mainAxisSpacing: 100,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) => NavigationButton(
          btnTitle: items[index].name,
          loginWidget: items[index].loginWidget,
        ),
      ),
    );
  }
}
