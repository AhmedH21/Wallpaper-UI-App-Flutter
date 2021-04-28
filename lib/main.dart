import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC TASK-2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff212121),
        scaffoldBackgroundColor: Color(0xff303030),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wallpaper App'),
        ),
        body: Row(
          children: [
            Column(
              children: [
                CustomImg(1),
                CustomImg(2),
                CustomImg(3),
                CustomImg(4),
                CustomImg(5),
              ],
            ),
            Column(
              children: [
                CustomImg(6),
                CustomImg(7),
                CustomImg(8),
                CustomImg(9),
                CustomImg(10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomImg extends StatelessWidget {
  final int imgIndex;

  CustomImg(this.imgIndex);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 160,
          width: 160,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 16,
                spreadRadius: 5,
                offset: Offset(
                  5.0,
                  5.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage('img/$imgIndex.jpg'), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
