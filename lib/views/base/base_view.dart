import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:salon_seven_seven/constants/ui.dart';
import 'package:salon_seven_seven/models/navigator_item.dart';
import 'package:salon_seven_seven/models/page_manager.dart';
import 'package:salon_seven_seven/views/home/home_view.dart';
import 'package:salon_seven_seven/widgets/widgets.dart';

class BaseView extends StatefulWidget {
  @override
  _BaseViewState createState() => _BaseViewState();



}

class _BaseViewState extends State<BaseView> {

  final  PageController pageController = PageController();



  List<NavigationItem> items = [
    NavigationItem(color: primaryColor,title: Text('Home'),icon: Icon(Icons.home),onTap: (){}),
    NavigationItem(color: accentColor,title: Text('Agendamentos'),icon: Icon(Icons.date_range),onTap: (){}),
    NavigationItem(color: Colors.redAccent,title: Text('Favoritos'),icon: Icon(Icons.favorite),onTap: (){}),
    NavigationItem(color: Colors.green,title: Text('Perfil'),icon: Icon(Icons.person_outline),onTap: (){}),
  ];

  @override
  Widget build(BuildContext context) {

    return Provider(
      create: (_) => PageManage(pageController),
      child: Stack(
        children: <Widget>[
          PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeView(),
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blueAccent),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavyBar(
              items: items,
            ),
          )
        ],
      ),
    );
  }
}
