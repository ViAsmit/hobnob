import 'package:flutter/material.dart';

class App {
  late BuildContext _context;
  double _height = 0.0;
  double _width = 0.0;
  double _heightPadding = 0.0;
  double _widthPadding = 0.0;

  App(_context) {
    this._context = _context;
    MediaQueryData _queryData = MediaQuery.of(this._context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
    _heightPadding = _height -
        ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
    _widthPadding =
        _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
  }

  double appHeight(double v) {
    return _height * v;
  }

  double appWidth(double v) {
    return _width * v;
  }

  double appVerticalPadding(double v) {
    return _heightPadding * v;
  }

  double appHorizontalPadding(double v) {
    return _widthPadding * v;
  }
}

class Colors {
  final Color _mainColor = const Color(0xFF00D970);
  final Color _mainDarkColor = const Color(0xFF00D970);
  final _secondColor = const Color(0xFF000000);
  final Color _secondDarkColor = const Color(0xFFE7F6F8);
  final Color _accentColor = const Color(0xFFFF0000);
  final Color _accentDarkColor = const Color(0xFFFF0000);

  Color mainColor(double opacity) {
    return _mainColor.withOpacity(opacity);
  }

  Color secondColor(double opacity) {
    return _secondColor.withOpacity(opacity);
  }

  Color accentColor(double opacity) {
    return _accentColor.withOpacity(opacity);
  }

  Color mainDarkColor(double opacity) {
    return _mainDarkColor.withOpacity(opacity);
  }

  Color secondDarkColor(double opacity) {
    return _secondDarkColor.withOpacity(opacity);
  }

  Color accentDarkColor(double opacity) {
    return _accentDarkColor.withOpacity(opacity);
  }
}
