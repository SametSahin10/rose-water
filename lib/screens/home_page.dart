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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.network(Constants.dummy_image_url),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
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
                width: 160,
                height: 80,
                child: ListTile(
                  title: Text(
                      'Gülsuyu',
                      style: TextStyle(fontSize: 20)
                  ),
                ),
              ),
              Container(
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
        Text(
          Constants.text_below_the_banner,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20
          ),
        )
      ],
    );
  }
}
