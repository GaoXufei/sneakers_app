import 'package:get/get.dart';

class ApplicationState {
  // title
  final _title = "".obs;
  set title(value) => this._title.value = value;
  get title => this._title.value;

  // ! 页面下标
  final _page = 0.obs;
  set page(value) => this._page.value = value;
  get page => this._page.value;
}
