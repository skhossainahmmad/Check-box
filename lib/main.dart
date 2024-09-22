import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Checkbox",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _checkBox = false;
  bool _switch = true;
  int _radioGroupValue = 1;
  List<bool> _isSelected = [false, true, false];
  bool _checkBosListTile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Checkbox"),
            Checkbox(
                value: _checkBox,
                onChanged: (value) {
                  setState(() {
                    _checkBox = value!;
                  });
                }),
            Divider(
              color: Colors.red,
              height: 50,
              thickness: 10,
            ),
            Text("Switch"),
            Switch(
                value: _switch,
                onChanged: (value) {
                  setState(() {
                    _switch = value;
                  });
                }),
            Text("Choose your gender?"),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Radio"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _radioGroupValue,
                          onChanged: (value) {
                            setState(() {
                              _radioGroupValue = value!;
                            });
                          }),
                      VerticalDivider(),
                      Text("Male"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: _radioGroupValue,
                        onChanged: (value) {
                          setState(() {
                            _radioGroupValue = value!;
                          });
                        },
                      ),
                      VerticalDivider(),
                      Text("Female"),
                    ],
                  ),
                ],
              ),
            ),
            Text("ToggleButtons"),
            ToggleButtons(
                children: <Widget>[
                  Icon(Icons.bluetooth),
                  Icon(Icons.wifi),
                  Icon(Icons.flash_on),
                ],
                isSelected: _isSelected,
                onPressed: (int index) {
                  setState(() {
                    _isSelected[index] = !_isSelected[index];
                  });
                }),
            Divider(
              height: 50,
              color: Colors.red,
              thickness: 20,
            ),
            Text("CheckboxListTile"),
            CheckboxListTile(
              title: Text("CheckBox List Tile"),
              subtitle: Text(
                  "A ListTile with a checkbox. in other words,  checBox with a label."),
              value: _checkBosListTile,
              onChanged: (value) {
                setState(() {
                  _checkBosListTile = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
