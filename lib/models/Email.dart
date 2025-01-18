import 'package:flutter/material.dart';

class Email {
  final String image;
  final String name;
  final String subject;
  final String body;
  final String time;
  final bool isAttachmentAvailable;
  final bool isChecked;
  final Color? tagColor;

  Email({
    required this.image,
    required this.name,
    required this.subject,
    required this.body,
    required this.time,
    required this.isAttachmentAvailable,
    required this.isChecked,
    this.tagColor,
  });
}

final List<Email> emails = [
  Email(
    name: "Apple",
    image: "assets/images/user_1.png",
    subject: "iPhone 12 is here",
    isAttachmentAvailable: false,
    isChecked: true,
    tagColor: null,
    time: "Now",
    body: emailDemoText,
  ),
  Email(
    name: "Elvia Atkins",
    image: "assets/images/user_2.png",
    subject: "Inspiration for our new home",
    isAttachmentAvailable: true,
    isChecked: false,
    tagColor: null,
    time: "15:32",
    body: emailDemoText,
  ),
  Email(
    name: "Marvin Kiehn",
    image: "assets/images/user_3.png",
    subject: "Business-focused empowering the world",
    isAttachmentAvailable: true,
    isChecked: false,
    tagColor: null,
    time: "14:27",
    body: emailDemoText,
  ),
  Email(
    name: "Domenic Bosco",
    image: "assets/images/user_4.png",
    subject: "The fastest way to Design",
    isAttachmentAvailable: false,
    isChecked: true,
    tagColor: const Color(0xFF23CF91),
    time: "10:43",
    body: emailDemoText,
  ),
  Email(
    name: "Elenor Bauch",
    image: "assets/images/user_5.png",
    subject: "New job opportunities",
    isAttachmentAvailable: false,
    isChecked: false,
    tagColor: const Color(0xFF3A6FF7),
    time: "9:58",
    body: emailDemoText,
  ),
];

const String emailDemoText =
    "Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed";
