import 'package:flutter/material.dart';
import 'package:outlook/components/side_menu.dart';
import 'package:outlook/responsive.dart';
import 'package:outlook/screens/email/email_screen.dart';
import 'package:outlook/models/Email.dart';
import 'package:outlook/generated/l10n/l10n.dart';
import 'components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  List<Email> _buildEmails(BuildContext context) {
    return [
      Email(
        image: "assets/images/user_1.png",
        name: AppLocalizations.of(context).defaultUserName,
        subject: AppLocalizations.of(context).defaultEmailSubject,
        body: AppLocalizations.of(context).defaultEmailBody,
        time: "10:42 AM",
        isAttachmentAvailable: false,
        isChecked: true,
      ),
      // Add more emails as needed
    ];
  }

  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        mobile: ListOfEmails(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: 9,
              child: EmailScreen(email: _buildEmails(context)[0]),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: SideMenu(),
            ),
            Expanded(
              flex: size.width > 1340 ? 3 : 5,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: size.width > 1340 ? 8 : 10,
              child: EmailScreen(email: _buildEmails(context)[0]),
            ),
          ],
        ),
      ),
    );
  }
}
