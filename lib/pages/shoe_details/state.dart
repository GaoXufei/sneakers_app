import 'package:get/get.dart';

class ShoeDetailsState {
  // title
  final _title = "Title".obs;
  set title(value) => this._title.value = value;
  get title => this._title.value;
}
