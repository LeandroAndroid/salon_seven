import 'package:flutter/material.dart';
import 'package:salon_seven_seven/constants/ui.dart';
import 'package:salon_seven_seven/models/category.dart';
import 'package:salon_seven_seven/models/salon_widget.dart';
import 'package:salon_seven_seven/views/home/widgets/category_widget.dart';
import 'package:salon_seven_seven/views/home/widgets_home.dart';
import 'package:salon_seven_seven/widgets/widgets.dart';

class HomeView extends StatelessWidget {


 List<Category> categories = [
   Category(icon: 'images/icons/hair.png',label: 'Cortes', color: primaryColor),
   Category(icon: 'images/icons/beauty.png',label: 'Maquiagem', color: accentColor),
   Category(icon: 'images/icons/barber.png',label: 'Barbeiros', color: Colors.black54),
   Category(icon: 'images/icons/nails.png',label: 'Unhas', color: Colors.pinkAccent),
   Category(icon: 'images/icons/eyebrow.png',label: 'Sombrancelhas', color: Colors.purpleAccent),
   Category(icon: 'images/icons/massage.png',label: 'Massagens', color: Colors.blueGrey),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextNameUser('Jhon Doe'),
        actions: <Widget>[
          CircleAvatar(
            backgroundColor: primaryColor,
          ),
          SizedBox(width: 8)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  TextLocalUser(localUser: 'Osasco - SP'),
                  SizedBox(height: 16),
                  CustomTextField(
                    prefix: Icon(Icons.search),
                    hint: 'Buscar por salões, barbearias....',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  LabelCustom(label:'Categorias'),
                  Container(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.only(right:16.0),
                          child: CategoryWidget(category: categories[index],),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  LabelCustom(label: 'Top Salões'),
                  Container(
                    height: 135,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.only(right:16),
                          child: SalonWidget(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  LabelCustom(label: 'Salões'),
                  Container(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.only(bottom:8.0),
                          child: Container(
                            height: 200,
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 70,)

          ],
        ),
      ),
    );
  }
}
