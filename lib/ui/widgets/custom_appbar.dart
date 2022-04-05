import 'package:flutter/material.dart';
import 'package:flutter_classified_app/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 10,
      width: width,
      padding: const EdgeInsets.only(left: 10, top: 25),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.orange[200]!, Colors.pinkAccent],
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                prints("pop");
                Navigator.of(context).pop();
              }),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )
        ],
      ),
    );
  }
}
