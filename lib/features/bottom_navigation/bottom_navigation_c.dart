import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_c.g.dart';

@riverpod
class BottomNavigationC extends _$BottomNavigationC {
  @override
  int build() => 0;

  void setTab(int tab) => state = tab;
}
