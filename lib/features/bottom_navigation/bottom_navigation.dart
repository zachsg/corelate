import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation.g.dart';

@riverpod
class BottomNavigation extends _$BottomNavigation {
  @override
  int build() => 0;

  void setTab(int tab) => state = tab;
}
