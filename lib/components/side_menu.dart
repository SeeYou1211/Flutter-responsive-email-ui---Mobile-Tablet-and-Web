import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outlook/responsive.dart';
import 'package:outlook/generated/l10n/l10n.dart';
import 'package:provider/provider.dart';
import 'package:outlook/theme.dart';
import '../screens/main/main_screen.dart';

import '../constants.dart';
import '../extensions.dart';
import 'side_menu_item.dart';
import 'tags.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  void _changeLanguage(BuildContext context) {
    final appTheme = Provider.of<AppTheme>(context, listen: false);
    final currentLocale = Localizations.localeOf(context);
    final newLocale = currentLocale.languageCode == 'zh'
        ? const Locale('en')
        : const Locale('zh');
    appTheme.setLocale(newLocale);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: kBgLightColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Logo Outlook.png",
                    width: 46,
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.language),
                        color: kTextColor,
                        onPressed: () => _changeLanguage(context),
                      ),
                      Text(
                        Localizations.localeOf(context).languageCode == 'zh'
                            ? '中文'
                            : 'English',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
              SizedBox(height: kDefaultPadding),
              TextButton.icon(
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 0),
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {
                  // TODO: 实现新建消息功能
                  print('新建消息按钮被点击');
                },
                icon: SvgPicture.asset("assets/Icons/Edit.svg", width: 16),
                label: Text(
                  AppLocalizations.of(context)!.newMessage,
                  style: TextStyle(color: Colors.white),
                ),
              ).addNeumorphism(
                topShadowColor: Colors.white,
                bottomShadowColor: Color(0xFF234395).withOpacity(0.2),
              ),
              SizedBox(height: kDefaultPadding),
              TextButton.icon(
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 0),
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: kBgDarkColor,
                ),
                onPressed: () {
                  // TODO: 实现获取消息功能
                  print('获取消息按钮被点击');
                },
                icon: SvgPicture.asset("assets/Icons/Download.svg", width: 16),
                label: Text(
                  AppLocalizations.of(context)!.getMessages,
                  style: TextStyle(color: kTextColor),
                ),
              ).addNeumorphism(),
              SizedBox(height: kDefaultPadding * 2),
              SideMenuItem(
                press: () {},
                title: AppLocalizations.of(context)!.inbox,
                iconSrc: "assets/Icons/Inbox.svg",
                isActive: true,
                itemCount: 3,
              ),
              SideMenuItem(
                press: () {},
                title: AppLocalizations.of(context)!.sent,
                iconSrc: "assets/Icons/Send.svg",
                isActive: false,
                itemCount: 0,
              ),
              SideMenuItem(
                press: () {},
                title: AppLocalizations.of(context)!.drafts,
                iconSrc: "assets/Icons/File.svg",
                isActive: false,
                itemCount: 0,
              ),
              SideMenuItem(
                press: () {},
                title: AppLocalizations.of(context)!.deleted,
                iconSrc: "assets/Icons/Trash.svg",
                isActive: false,
                showBorder: false,
                itemCount: 0,
              ),
              SizedBox(height: kDefaultPadding * 2),
              Tags(),
            ],
          ),
        ),
      ),
    );
  }
}
