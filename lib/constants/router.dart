
import 'package:flutter/material.dart';
import 'package:salon_seven_seven/constants/router_constants.dart';
import 'package:salon_seven_seven/views/Slider/slider_view.dart';

Route<dynamic> generateRouter(RouteSettings settings){

  switch (settings.name){
    case RouterInitial:
      return MaterialPageRoute(builder: (_) => SliderView());
    default:
      return MaterialPageRoute(builder: (_) => SliderView());
  }

}