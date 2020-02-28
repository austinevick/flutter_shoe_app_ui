import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_shopping_app/Models/app_model.dart';
import 'package:shoe_shopping_app/Screen/profile_page.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'detail_page.dart';

class HomePage extends StatelessWidget {
  final List<BuildList> imageList = [
    BuildList(image: 'asset/shoe_5.jpg', price: 200, title: 'Adidas'),
    BuildList(image: 'asset/shoe_7.png', price: 200, title: 'Nike'),
    BuildList(image: 'asset/shoe_6.jpg', price: 500, title: 'Winter'),
    BuildList(image: 'asset/shoe_5.jpg', price: 300, title: 'Adidas'),
    BuildList(image: 'asset/shoe_8.jpg', price: 200, title: 'Spring'),
    BuildList(image: 'asset/shoe_3.webp', price: 200, title: 'Adidas')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0028ff).withOpacity(0.4),
      drawer: UserProfilePage(),
      appBar: AppBar(
        backgroundColor: Color(0xff0028ff),
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Latest Collections',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                   _buildCategory(image: 'asset/shoe_2.jpeg', brand: 'Amazon'),
                    _buildCategory(image: 'asset/shoe_3.webp', brand: 'Nike'),
                    _buildCategory(image: 'asset/shoe_5.jpg', brand: 'Ebay'),
                    _buildCategory(image: 'asset/shoe_1.jpg', brand: 'Epay'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    // Text('Puma'),Text('Puma'),Text('Puma'),Text('Puma'),
                  ],
                )
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            'Nice collections for you',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child: Container(
            child:
              GridView.builder(
                  itemCount: imageList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(
                                      buildList: imageList[index],
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Text(
                                    imageList[index].title,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                      child: Text(
                                    '\$' +
                                        imageList[index].price
                                            .toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SmoothStarRating(
                                color: Color(0xff0028ff),
                                starCount: 5,
                                rating: 3.0,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.3),
                                      BlendMode.darken),
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      imageList[index].image))),
                        ),
                      ),
                    );
                  }),
            ),
          ),

      ]),
    );
  }

  _buildCategory({String image, String brand}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          brand,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        height: 120,
        width: 120,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(

            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage(image))),
      ),
    );
  }
}
