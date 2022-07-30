import 'package:flutter/material.dart';

class ServiceAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ServiceAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.05,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_outlined,
          color: Color.fromRGBO(231, 27, 3, 1),
        ),
      ),
    );
  }
}
