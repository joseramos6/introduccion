import 'package:flutter/material.dart';
import 'package:introduccion/router/app_routes.dart';
import 'package:introduccion/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Introducción a Flutter'),
          // backgroundColor: Colors.orange,
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
              leading: Icon(
                menuOptions[i].icon,
                color: AppTheme.primary,
              ),
              onTap: () {
                // Navigator.pushNamed(context, 'alert');
                Navigator.pushNamed(context, menuOptions[i].route);
              }),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
