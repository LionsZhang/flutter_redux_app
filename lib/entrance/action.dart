import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum EntranceAction { action ,open_product}

class EntranceActionCreator {
  static Action onAction() {
    return const Action(EntranceAction.action);
  }
  /// 跳转到产品页Action
  static Action onOpenProductAction() {
    return const Action(EntranceAction.open_product);
  }
}
