import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_light_dark_theme/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            iconSize: 30,
            icon: Icon(themeProvider.isDarkMode
                ? CupertinoIcons.sun_max
                : CupertinoIcons.moon_fill),
            onPressed: () {
              final themeProvider =
                  Provider.of<ThemeProvider>(context, listen: false);
              if (themeProvider.isDarkMode) {
                themeProvider.toggleTheme(false);
              } else {
                themeProvider.toggleTheme(true);
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: const NetworkImage(kDefaultImage),
                radius: 60.0,
              ),
              const SizedBox(height: 15.0),
              Text(
                "Chisom",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Text(
                "@sanchezqb",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 30.0),
              Expanded(
                child: ListView.separated(
                  itemCount: items.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      Container(height: 20),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Theme.of(context).cardColor,
                      ),
                      child: ListTile(
                        leading: items[index].leading,
                        title: Text(items[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: items[index].trailing,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
