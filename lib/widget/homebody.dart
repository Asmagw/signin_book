import 'package:flutter/material.dart';
import 'package:signbook/constants.dart';
import 'package:signbook/models/catag_card.dart';
import 'package:signbook/widget/DetailsbookScreen.dart';

class homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70.0),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: catagList.length,
                  itemBuilder: (context, index) => BookCard(
                    itemIndex: index,
                    Catag: catagList[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsbookScreen(
                            Catag: catagList[index],
                          ),
                        ),
                      );
                    },
                    key: null,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
