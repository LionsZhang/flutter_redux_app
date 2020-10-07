import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';
/// 处理数据更新页面状态
Reducer<EntranceState> buildReducer() {
  return asReducer(
    <Object, Reducer<EntranceState>>{
      EntranceAction.action: _onAction,
    },
  );
}

EntranceState _onAction(EntranceState state, Action action) {
  final EntranceState newState = state.clone();
  return newState;
}
