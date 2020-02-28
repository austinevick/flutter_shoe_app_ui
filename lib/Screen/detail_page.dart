import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_shopping_app/Models/app_model.dart';

import '../main.dart';

class DetailPage extends StatefulWidget {
  final BuildList buildList;

  DetailPage({Key key, this.buildList}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                  fit: BoxFit.cover,
                  image: AssetImage(widget.buildList.image))),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_backspace,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    IconButton(
                        icon: Icon(Icons.favorite),
                        color: Colors.white,
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.add_shopping_cart),
                        color: Colors.white,
                        onPressed: () {}),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.buildList.title,
                        style: textStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'View More',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Categories',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              buildCategory(image: 'asset/shoe_5.jpg', title: 'Perfume'),
              buildCategory(image: 'asset/shoe_6.jpg', title: 'Clothes'),
              buildCategory(image: 'asset/shoe_1.jpg', title: 'Beauty'),
              buildCategory(image: 'asset/shoe_9.jpg', title: 'Shoes'),
              buildCategory(image: 'asset/shoe_7.png', title: 'Bags'),
              buildCategory(image: 'asset/shoe_5.jpg', title: 'Wristwatch')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Best selling',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              buildCategory(image: 'asset/shoe_5.jpg', title: 'Perfume'),
              buildCategory(image: 'asset/shoe_6.jpg', title: 'Clothes'),
              buildCategory(image: 'asset/shoe_1.jpg', title: 'Beauty'),
              buildCategory(image: 'asset/shoe_9.jpg', title: 'Shoes'),
              buildCategory(image: 'asset/shoe_7.png', title: 'Bags'),
              buildCategory(image: 'asset/shoe_5.jpg', title: 'Wristwatch')
            ],
          ),
        )
      ],
    ));
  }

  buildCategory({image, title}) {
    return AspectRatio(
      aspectRatio: 2 / 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(duration: Duration(milliseconds: 3000),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.luminosity),
                  fit: BoxFit.cover,
                  image: AssetImage(image))),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
