import 'package:appbasepe/blocs/theme.dart';
import 'package:appbasepe/components/radio_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  static const themeProps = [
    {"label": "Light", "value": ThemeProps.light},
    {"label": "Dark", "value": ThemeProps.dark}
  ];

  static const fontProps = [
    {"label": 'Small', "value": 0},
    {"label": 'Medium', "value": 1},
    {"label": 'Large', "value": 2},
    {"label": 'Extra large', "value": 3}
  ];

  num _fontValue = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    ThemeProps _themeValue = theme.getValueTheme();

    void _selectArticle(Object item) {
      setState(() {
        _themeValue = item;
      });
      theme.setTheme(item);
    }

    void _selectFont(Object item) {
      setState(() {
        _fontValue = item;
      });
    }

    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Settings",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Theme",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      RadioForm(
                        character: _themeValue,
                        handleSelect: _selectArticle,
                        radioProps: themeProps,
                        orientation: OrientationProps.row,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Font Size",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      RadioForm(
                        character: _fontValue,
                        handleSelect: _selectFont,
                        radioProps: fontProps,
                        orientation: OrientationProps.column,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
