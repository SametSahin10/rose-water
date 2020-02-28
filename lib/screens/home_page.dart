import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rose_water/config/assets.dart';
import 'package:rose_water/config/constants.dart';
import 'package:rose_water/widgets/product_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        Assets.logo,
                        scale: 9,
                      ),
                      SizedBox(width: 60),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 180,
                        child: FlatButton(
                          child: Text(
                            'Anasayfa',
                            style: TextStyle(fontSize: 20)
                          ),
                          onPressed: () => _scrollToPosition(0),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 180,
                        height: 60,
                        child: FlatButton(
                          child: Text(
                            'Gül Suyu',
                            style: TextStyle(fontSize: 20)
                          ),
                          onPressed: () => _scrollToPosition(430),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 180,
                        height: 60,
                        child: FlatButton(
                          child: Text(
                            'Ürünlerimiz',
                            style: TextStyle(fontSize: 20)
                          ),
                          onPressed: () => _scrollToPosition(680),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 180,
                        height: 60,
                        child: FlatButton(
                          child: Text(
                           'Hakkımızda',
                            style: TextStyle(fontSize: 20)
                          ),
                          onPressed: () => _scrollToPosition(1300),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 180,
                        height: 60,
                        child: FlatButton(
                          child: Text(
                            'İletişim',
                            style: TextStyle(fontSize: 20)
                          ),
                          onPressed: () => _scrollToPosition(1400),
                        ),
                      )          ]
                ),
              ),
            ],
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      controller: _scrollController,
      children: <Widget>[
        Image.asset(
          Assets.banner,
          width: double.infinity,
          height: 400,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 30),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 1000,
            child: Text(
              Constants.text_below_the_banner,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        _buildProducts(),
        SizedBox(height: 30),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Hakkımızda',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24
            ),
          ),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 1000,
            child: Text(
              Constants.about_us_text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ),
        ),
        SizedBox(height: 50),
        Center(
          child: Text(
            Constants.footer_text,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }

  Widget _buildProducts() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ProductItem(Assets.product_50_ml, 'Gül Suyu 50 ml'),
            ProductItem(Assets.product_100_ml, 'Gül Suyu 100 ml'),
            ProductItem(Assets.product_250_ml, 'Gül Suyu 250 ml'),
            ProductItem(Assets.product_400_ml, 'Gül Suyu 400 ml'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ProductItem(
              Assets.product_in_box_100_ml,
              'Gül Suyu Kutulu 100 ml'
            ),
            ProductItem(
              Assets.product_in_box_100_ml_one,
              'Gül Suyu Kutulu 100 ml'
            ),
            ProductItem(
              Assets.product_in_box_250_ml,
              'Gül Suyu Kutulu 250 ml'
            ),
            ProductItem(
              Assets.product_in_box_250_ml_one,
              'Gül Suyu Kutulu 250 ml'
            ),
          ],
        ),
      ],
    );
  }

  _scrollToPosition(double scrollTo) {
    _scrollController.animateTo(
      scrollTo,
      duration: Duration(milliseconds: 500),
      curve: Curves.linear);
  }
}
