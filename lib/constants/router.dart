
import 'package:flutter/material.dart';
import 'package:salon_seven_seven/constants/router_constants.dart';
import 'package:salon_seven_seven/views/Slider/slider_view.dart';
import 'package:salon_seven_seven/views/base/base_view.dart';
import 'package:salon_seven_seven/views/login/login_op_view.dart';
import 'package:salon_seven_seven/views/login/login_view.dart';

Route<dynamic> generateRouter(RouteSettings settings){

  switch (settings.name){
    case RouterInitial:
      return MaterialPageRoute(builder: (_) => SliderView());
    case RLoginOp:
      return MaterialPageRoute(builder: (_) => LoginOpView());
    case RLoginView:
      return MaterialPageRoute(builder: (_) => LoginView());
    case RBase:
      return MaterialPageRoute(builder: (_) => BaseView());
    default:
      return MaterialPageRoute(builder: (_) => SliderView());
  }

}