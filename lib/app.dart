import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:fish_redux/src/redux_component/page.dart'as ReduxPage;
import 'package:flutter_redux_app/entrance/page.dart';

/**
 *
 * App全局配置
 *
 * */

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, ReduxPage.Page<Object, dynamic>>{

      'entrance_page': EntrancePage(),  //在这里添加页面


    },
  );

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),

    home: routes.buildPage('entrance_page', null),  //把他作为默认页面


    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
