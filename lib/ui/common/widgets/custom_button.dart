import 'package:flutter/material.dart';
import 'package:itr_course_app/ui/default_screen.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.btnTitle,
    this.loginWidget,
    // this.loginWidget = const DefaultScreen(),
  });

  final Widget? loginWidget;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => loginWidget ?? const DefaultScreen(),
          ),
        );
      },
      child: Text(
        btnTitle,
        maxLines: 1,
      ),
    );
  }
}
