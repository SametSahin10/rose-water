import 'package:flutter/material.dart';
import 'package:rose_water/config/assets.dart';
import 'package:rose_water/config/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        width: 160,
                        height: 80,
                        child: ListTile(
                          title: Text(
                              'Anasayfa',
                              style: TextStyle(fontSize: 20)
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 160,
                        height: 80,
                        child: ListTile(
                          title: Text(
                              'Gül Suyu',
                              style: TextStyle(fontSize: 20)
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 160,
                        height: 80,
                        child: ListTile(
                          title: Text(
                            'Ürunlerimiz',
                            style: TextStyle(fontSize: 20)
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14),
                        width: 160,
                        height: 80,
                        child: ListTile(
                          title: Text(
                            'İletişim',
                            style: TextStyle(fontSize: 20)
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
        )
      ],
    );
  }
}
