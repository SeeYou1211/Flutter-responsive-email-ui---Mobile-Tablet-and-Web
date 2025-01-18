import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:outlook/models/Email.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/header.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({
    Key? key,
    required this.email,
  }) : super(key: key);

  final Email email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage(Email.getEmails(context)[1].image!),
                      ),
                      SizedBox(width: kDefaultPadding),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text:
                                              Email.getEmails(context)[1].name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                          children: [
                                            TextSpan(
                                                text: ' <email@example.com>',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        email.subject ?? 'No Subject',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: kDefaultPadding / 2),
                                Text(
                                  email.subject ?? 'No Subject',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ],
                            ),
                            SizedBox(height: kDefaultPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 850
                                    ? 800
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      email.body ?? '',
                                      style: TextStyle(
                                        height: 1.5,
                                        color: Color(0xFF4D5875),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height: kDefaultPadding),
                                    Row(
                                      children: [
                                        Text(
                                          email.body ?? '',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        Spacer(),
                                        Text(
                                          'Download All',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                        SizedBox(width: kDefaultPadding / 4),
                                        SvgPicture.asset(
                                          "assets/Icons/Download.svg",
                                          height: 16,
                                          color: kGrayColor,
                                        ),
                                      ],
                                    ),
                                    Divider(thickness: 1),
                                    SizedBox(height: kDefaultPadding / 2),
                                    SizedBox(
                                      height: 200,
                                      child: StaggeredGrid.count(
                                        crossAxisCount: 4,
                                        mainAxisSpacing: kDefaultPadding,
                                        crossAxisSpacing: kDefaultPadding,
                                        children: List.generate(3, (index) {
                                          return StaggeredGridTile.count(
                                            crossAxisCellCount: 2,
                                            mainAxisCellCount:
                                                index.isOdd ? 2 : 1,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                "assets/images/Img_$index.png",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
