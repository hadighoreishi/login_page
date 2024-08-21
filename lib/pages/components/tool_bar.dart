import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget {
  const ToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("title tool bar");
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
