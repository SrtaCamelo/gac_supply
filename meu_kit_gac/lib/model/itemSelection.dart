import "package:meta/meta.dart";
class Item{
  String title;
  bool value;

  Item({
    @required this.title,
    this.value = false,

  });
}