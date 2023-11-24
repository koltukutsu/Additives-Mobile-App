import 'package:additives/data/data.dart';
import 'package:additives/logic/search_additive_provider.dart';
import 'package:additives/model/additive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SearchAdditivesScreen extends StatefulWidget {
  const SearchAdditivesScreen({Key? key}) : super(key: key);

  @override
  _SearchAdditivesScreenState createState() => _SearchAdditivesScreenState();
}

class _SearchAdditivesScreenState extends State<SearchAdditivesScreen> {
  final List<Map<String, dynamic>> _additives = additiveMap;

  // This list holds the data for the list view

  @override
  initState() {
    Provider.of<SearchAdditiveProvider>(context, listen: false)
        .clearFilter(_additives);
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _additives;
    } else {
      results = _additives
          .where((additive) => additive["CODE_AND_NAME"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    // setState(() {
    //   _foundAdditivies = results;
    // });
    Provider.of<SearchAdditiveProvider>(context, listen: false)
        .clearFilter(results);
    // debugPrint(results.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Katki Maddeleri - Tüm Kodları Ara',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 4.sp,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0.sp),
                    child: const Text(
                      '\nLütfen bir katkı maddesi seçiniz.',
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
                    child: TextField(
                      controller: Provider.of<SearchAdditiveProvider>(context)
                          .searchController,
                      focusNode: Provider.of<SearchAdditiveProvider>(context)
                          .searchFocusNode,
                      onChanged: (value) => _runFilter(value),
                      decoration: InputDecoration(
                        hintText: "E Kodu",
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
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.sp,
          ),
          Consumer<SearchAdditiveProvider>(
            builder: (context, searchAdditiveProvider, child) {
              return Expanded(
                child: searchAdditiveProvider.foundItems.isNotEmpty
                    ? ListView.builder(
                        itemCount: searchAdditiveProvider.foundItemCount,
                        itemBuilder: (context, index) {
                          Map<String, dynamic> foundItem =
                              searchAdditiveProvider.foundItems[index];

                          Additive additive = Additive(
                            codeAndName: foundItem["CODE_AND_NAME"],
                            code: foundItem["CODE"],
                            additiveCode: foundItem["ADDITIVE_CODE"],
                            onlyCode: foundItem["ONLY_CODE"],
                            health: foundItem["HEALTH"],
                            halal: foundItem["HALAL"],
                            class_: foundItem["CLASS"],
                          );
                          Widget healthWidget = additive.health == "RED"
                              ? const Text(
                                  "Zararlı",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w900),
                                )
                              : const Text(
                                  "Zararsız",
                                  style: TextStyle(color: Colors.grey),
                                );
                          Widget halalWidget = additive.halal == "NORMAL"
                              ? Text(
                                  "Caiz",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                )
                              : additive.halal == "VITAL_1"
                                  ? Text(
                                      "Şüpheli",
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
                                  ? Theme.of(context)
                                      .colorScheme
                                      .error
                                      .withOpacity(0.15)
                                  : Theme.of(context)
                                      .colorScheme
                                      .error
                                      .withOpacity(0.8);
                          return Card(
                            key: ValueKey(
                                searchAdditiveProvider.foundItems[index]),
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
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
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
                              subtitle:
                                  Text(descriptionAdditive[additive.halal]),
                            ),
                          );
                        },
                      )
                    : const Text(
                        'Kayıt Bulunamadı',
                        style: TextStyle(fontSize: 24),
                      ),
              );
            },
          ),
        ],
      ),
    );
  }
}
