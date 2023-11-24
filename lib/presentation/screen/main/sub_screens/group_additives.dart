import 'package:additives/logic/group_additive_provider.dart';
import 'package:additives/model/additive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:searchfield/searchfield.dart';
import 'package:sizer/sizer.dart';

import '../../../../data/data.dart';

class GroupAdditiviesScreen extends StatefulWidget {
  const GroupAdditiviesScreen({Key? key}) : super(key: key);

  @override
  _GroupAdditivesScreenState createState() => _GroupAdditivesScreenState();
}

class _GroupAdditivesScreenState extends State<GroupAdditiviesScreen> {
  SearchFieldListItem<dynamic>? _selectedItem;
  TextEditingController searchController = TextEditingController();

  // List<SearchFieldListItem> _selectedItems = [];
  final List<SearchFieldListItem> suggestions = additiveMap
      .map((e) => SearchFieldListItem(e["CODE_AND_NAME"],
          item: Additive(
            codeAndName: e["CODE_AND_NAME"],
            code: e["CODE"],
            additiveCode: e["ADDITIVE_CODE"],
            onlyCode: e["ONLY_CODE"],
            health: e["HEALTH"],
            halal: e["HALAL"],
            class_: e["CLASS"],
          ),
          child: Text(e["CODE_AND_NAME"])))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Katki Maddeleri Toplu Liste Yap',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 4.sp,
              ),
              Padding(
                padding: EdgeInsets.all(20.0.sp),
                child: const Text(
                  'Topluca Katki Maddelerine bakmak icin \nlutfen bir katki maddesi seciniz',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: SearchField(
                  hint: 'E Kodu',
                  focusNode: Provider.of<GroupAdditiveProvider>(context)
                      .searchFocusNode,
                  controller: searchController,
                  searchInputDecoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue.withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  maxSuggestionsInViewPort: 6,
                  itemHeight: 50,
                  scrollbarDecoration: ScrollbarDecoration(
                    radius: const Radius.circular(100),
                    trackRadius: const Radius.circular(100),
                  ),
                  suggestionsDecoration: SuggestionDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  onSuggestionTap: (value) {
                    debugPrint("ITS TAPPED");
                    setState(() {
                      _selectedItem = value!;
                      Provider.of<GroupAdditiveProvider>(context, listen: false)
                          .add(value);
                    });
                    searchController.clear();
                  },
                  suggestions: suggestions,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.sp,
          ),
          Consumer<GroupAdditiveProvider>(
              builder: (context, additiveProvider, child) {
            debugPrint(
                "Selected item count ${additiveProvider.selectedItemCount}");
            return Expanded(
                child: ListView.builder(
              itemCount: additiveProvider.selectedItemCount,
              itemBuilder: (context, index) {
                Additive additive = additiveProvider
                    .items[(additiveProvider.selectedItemCount - 1) - index]
                    .item;
                Widget healthWidget = additive.health == "RED"
                    ? const Text(
                        "Zararli",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w900),
                      )
                    : const Text(
                        "Zararsiz",
                        style: TextStyle(color: Colors.grey),
                      );
                Widget halalWidget = additive.halal == "NORMAL"
                    ? Text(
                        "Caiz",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )
                    : additive.halal == "VITAL_1"
                        ? Text(
                            "Supheli",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .error
                                      .withOpacity(0.55),
                                  fontWeight: FontWeight.w500,
                                ),
                          )
                        : Text(
                            "Haram",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .error
                                      .withOpacity(0.8),
                                  fontWeight: FontWeight.bold,
                                ),
                          );
                Color cardColor = additive.halal == "NORMAL"
                    ? Colors.green.shade50
                    : additive.halal == "VITAL_1"
                        ? Theme.of(context).colorScheme.error.withOpacity(0.15)
                        : Theme.of(context).colorScheme.error.withOpacity(0.8);
                return Card(
                  key: ValueKey(additiveProvider
                      .items[(additiveProvider.selectedItemCount - 1) - index]),
                  margin: const EdgeInsets.symmetric(vertical: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimary,
                      width: 0.2,
                    ),
                  ),
                  child: ListTile(
                    tileColor: cardColor,
                    title: Text(additive.codeAndName),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [healthWidget, halalWidget],
                        ),
                      ),
                    ),
                    subtitle: Text(descriptionAdditive[additive.halal]),
                  ),
                );
              },
            ));
          })
        ],
      ),
    );
  }
}
