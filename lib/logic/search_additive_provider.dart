import 'dart:collection';
import 'package:additives/presentation/common_import.dart';
import 'package:flutter/foundation.dart';
import 'package:searchfield/searchfield.dart';

class SearchAdditiveProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  List<Map<String, dynamic>> _foundAdditivies = [];
  TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<Map<String, dynamic>> get foundItems => UnmodifiableListView(_foundAdditivies);
  TextEditingController get searchController => controller;
  FocusNode get searchFocusNode => focusNode;
  /// The current total price of all items (assuming all items cost $42).
  int get foundItemCount => _foundAdditivies.length;

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(Map<String, dynamic> item) {
    _foundAdditivies.add(item);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void clearFilter(List<Map<String, dynamic>> allAdditives) {
    debugPrint("ClearFilter");
    _foundAdditivies.clear();
    _foundAdditivies.addAll(allAdditives);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void clearController() {
    controller.clear();
    notifyListeners();
  }

  void disposeController() {
    controller.dispose();
    notifyListeners();
  }

  void createController() {
    controller = TextEditingController();
    notifyListeners();
  }

  void focusOnSearch() {
    focusNode.requestFocus();
    notifyListeners();
  }
}