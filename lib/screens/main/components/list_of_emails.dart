import 'package:flutter/material.dart';
import 'package:outlook/models/Email.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../extensions.dart';
import 'email_card.dart';

class ListOfEmails extends StatelessWidget {
  const ListOfEmails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emails.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        child: EmailCard(
          email: emails[index],
          press: () {},
        ),
      ),
    );
  }
}
