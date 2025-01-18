import 'package:flutter/material.dart';
import 'package:outlook/components/side_menu.dart';
import 'package:outlook/responsive.dart';
import 'package:outlook/screens/email/email_screen.dart';
import 'package:outlook/models/Email.dart';
import 'components/list_of_emails.dart';

final List<Email> emails = [
  Email(
    image: "assets/images/user_1.png",
    name: "John Doe",
    subject: "Project Update",
    body: "Here's the latest update...",
    time: "10:42 AM",
    isAttachmentAvailable: false,
    isChecked: true,
  ),
  // Add more emails as needed
];

class MainScreen extends StatelessWidget {
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
              child: EmailScreen(email: emails[0]),
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
              child: EmailScreen(email: emails[0]),
            ),
          ],
        ),
      ),
    );
  }
}
