import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool switchState1 = false;
  bool switchState2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          children: [
            SwitchListTile(
              secondary: Icon(Icons.access_alarm),
              title: Text("Tamam mı?"),
                value: switchState1,
                onChanged: (value) {
                  switchState1 = value;
                  setState(() {
                    
                  });
                }),

                SwitchListTile(
              secondary: Icon(Icons.access_alarm),
              title: Text("Değil mi?"),
                value: switchState2,
                onChanged: (value) {
                  switchState2 = value;
                  setState(() {
                    
                  });
                })
          ],
        ));
  }
}
