import 'package:flutter/material.dart';

class PageManage {

  final PageController _pageController;

  PageManage(this._pageController);

  int page = 0;

  void setPage(int value) {
    if (value == page) return;
    page = value;
    _pageController.jumpToPage(value);
  }



}