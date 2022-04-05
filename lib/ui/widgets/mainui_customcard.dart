// ignore_for_file: must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  double? width;
  double? height;
  final String? title;
  final String? price;
  final String? dateAdded;
  final String? category;
  final String? description;
  final String? image;
  final String? location;

  CustomCard({
    Key? key,
    this.title,
    this.price,
    this.dateAdded,
    this.category,
    this.description,
    this.image,
    this.location,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: height! / 40),
                ),
                Container(
                  width: width! / 2.75,
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          price!,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          color: Colors.grey[200],
                          child: Text(
                            category!,
                            softWrap: true,
                            style: const TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: SizedBox(
                      width: width! / 2.5,
                      child: Text(
                        description!,
                        style: TextStyle(
                          fontSize: height! / 70,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: SizedBox(
                    width: width! / 2.75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          child: GestureDetector(
                            child: Icon(
                              Icons.favorite_border,
                              size: height! / 30,
                            ),
                            onTap: () {
                              if (kDebugMode) {
                                print('Fav');
                              }
                            },
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              dateAdded!,
                              style: TextStyle(fontSize: height! / 65),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  size: height! / 65,
                                ),
                                Text(
                                  location!,
                                  style: TextStyle(fontSize: height! / 65),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: width! / 2.5,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
                height: height! / 4,
                width: width! / 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
