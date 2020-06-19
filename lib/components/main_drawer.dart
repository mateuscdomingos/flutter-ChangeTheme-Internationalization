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
    {"label": "Light", "value": ThemeColorProps.light},
    {"label": "Dark", "value": ThemeColorProps.dark}
  ];

  static const fontProps = [
    {"label": 'Small', "value": ThemeTextProps.small},
    {"label": 'Medium', "value": ThemeTextProps.medium},
    {"label": 'Large', "value": ThemeTextProps.large},
    {"label": 'Extra large', "value": ThemeTextProps.extraLarge}
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    ThemeColorProps _valueTheme = theme.getThemeColor();
    ThemeTextProps _valueThemeText = theme.getThemeText();

    void _selectTheme(Object item) {
      setState(() {
        _valueTheme = item;
      });
      theme.setTheme(item, _valueThemeText);
    }

    void _selectFont(Object item) {
      setState(() {
        _valueThemeText = item;
      });
      theme.setTheme(_valueTheme, item);
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
                        character: _valueTheme,
                        handleSelect: _selectTheme,
                        radioProps: themeProps,
                        orientation: OrientationProps.row,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Font Size",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      RadioForm(
                        character: _valueThemeText,
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
