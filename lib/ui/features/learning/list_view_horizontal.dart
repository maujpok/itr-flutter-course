import 'package:flutter/material.dart';
import 'package:itr_course_app/data/static/login_students.dart';
import 'package:itr_course_app/ui/common/widgets/custom_button.dart';

class ListButtonsHorizontal extends StatelessWidget {
  const ListButtonsHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.red,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => SizedBox(
            width: 100,
            child: NavigationButton(
              btnTitle: items[index].name,
              loginWidget: items[index].loginWidget,
            )),
      ),
    );
  }
}
