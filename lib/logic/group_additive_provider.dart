import 'dart:collection';
import 'package:additives/presentation/common_import.dart';
import 'package:flutter/foundation.dart';
import 'package:searchfield/searchfield.dart';

class GroupAdditiveProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<SearchFieldListItem> _selectedItems = [];
  final FocusNode focusNode = FocusNode();

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<SearchFieldListItem> get items => UnmodifiableListView(_selectedItems);
  FocusNode get searchFocusNode => focusNode;
  /// The current total price of all items (assuming all items cost $42).
  int get selectedItemCount => _selectedItems.length;

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(SearchFieldListItem item) {
    _selectedItems.add(item);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void clearSelectedAdditives() {
    _selectedItems.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void focusOnSearch() {
    focusNode.requestFocus();
    notifyListeners();
  }
}