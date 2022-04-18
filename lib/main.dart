import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

bool isIOS = false;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (isIOS == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Platform Convertor",
                ),
                actions: [
                  Switch(
                    value: isIOS,
                    activeColor: Colors.amber,
                    inactiveThumbImage:
                        const AssetImage("assets/images/android.png"),
                    onChanged: (val) {
                      setState(() {
                        isIOS = val;
                      });
                    },
                  ),
                ],
              ),
              body: Container(),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: const Text("Platform Convertor"),
                trailing: CupertinoSwitch(
                  value: isIOS,
                  activeColor: CupertinoColors.activeGreen,
                  onChanged: (val) {
                    setState(() {
                      isIOS = val;
                    });
                  },
                ),
              ),
              child: Container(),
            ),
          );
  }
}
