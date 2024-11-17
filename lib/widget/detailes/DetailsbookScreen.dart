import 'package:flutter/material.dart';
import 'package:signbook/constants.dart';
import 'package:signbook/models/catag.dart';
import 'package:signbook/widget/detailes/detalis_body.dart';

class DetailsbookScreen extends StatelessWidget {
  final Catag catag;

  const DetailsbookScreen({required Key key, required this.catag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 208, 208),
      appBar: detailsAppBar(context),
      body: DetailsBody(
        catag: catag,
        key: null,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
