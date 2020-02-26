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
                        height: 80,
                        child: ListTile(
                          title: FlatButton(
                            child: Text(
                              'Anasayfa',
                              style: TextStyle(fontSize: 20)
                            ),
                            onPressed: () => _scrollToPosition(0),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 180,
                        height: 80,
                        child: ListTile(
                          title: FlatButton(
                            child: Text(
                                'Gül Suyu',
                                style: TextStyle(fontSize: 20)
                            ),
                            onPressed: () => _scrollToPosition(430),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 180,
                        height: 80,
                        child: ListTile(
                          title: FlatButton(
                            child: Text(
                              'Ürunlerimiz',
                              style: TextStyle(fontSize: 20)
                            ),
                            onPressed: () => _scrollToPosition(580),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 180,
                        height: 80,
                        child: ListTile(
                          title: FlatButton(
                            child: Text(
                              'İletişim',
                              style: TextStyle(fontSize: 20)
                            ),
                            onPressed: () => _scrollToPosition(620),
                          ),
                        ),
                      )          ]
                ),
              ),
            ],
          ),
//        actions: <Widget>[
//          Container(
//            width: 120,
//            height: 80,
//            child: ListTile(
//              title: Text('Anasayfa'),
//            ),
//          ),
//          Container(
//            width: 120,
//            height: 80,
//            child: ListTile(
//              title: Text('Gülsuyu'),
//            ),
//          ),
//          Container(
//            width: 120,
//            height: 80,
//            child: ListTile(
//              title: Text('Ürünlerimiz'),
//            ),
//          ),
//          Container(
//            width: 120,
//            height: 80,
//            child: ListTile(
//              title: Text('İletişim'),
//            ),
//          )
//        ],
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
        Row(
          children: <Widget>[
            SizedBox(width: 150),
            Expanded(
              child: Text(
                Constants.text_below_the_banner,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(width: 150)
          ],
        ),
        SizedBox(height: 30),
        _buildProducts(),
        SizedBox(height: 30),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ProductItem(Assets.product_50_ml, 'Gül Suyu 50 ml'),
        ProductItem(Assets.product_100_ml, 'Gül Suyu 100 ml'),
        ProductItem(Assets.product_250_ml, 'Gül Suyu 250 ml'),
        ProductItem(Assets.product_400_ml, 'Gül Suyu 400 ml'),
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
