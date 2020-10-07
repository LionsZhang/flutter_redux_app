import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
/**
 APP界面视图
*/
Widget buildView(
    EntranceState state, Dispatch dispatch, ViewService viewService) {
//  return Container();
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('入口页面'),
    ),
    body: Container(
      child: Center(
        child: RaisedButton(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            color: Colors.green,
            child: Text(
              "进入",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              //主页点击事件分发Action
              dispatch(EntranceActionCreator.onOpenProductAction());
            }),
      ),
    ),
  );
}
