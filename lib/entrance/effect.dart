import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;//Navigator 引入的flutter/widgets.dart 中存在Action与redux 冲突处理
import 'action.dart';
import 'state.dart';

/// 主要用于接收点击事件Action并处理

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    EntranceAction.action: _onAction,
    EntranceAction.open_product: _onOpenProduct,
  });
}

void _onOpenProduct(Action action,Context<EntranceState> ctx) {
   //product_list_page 是在app.dart中定义产品列表页面路由
     Navigator.of(ctx.context).pushNamed('product_list_page', arguments: null);

}

void _onAction(Action action, Context<EntranceState> ctx) {
}

