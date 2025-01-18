import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../../gen/assets.gen.dart';

class TagWidget extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback? onTap;

  const TagWidget({
    Key? key,
    required this.color,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding * 1.5, 10, 0, 10),
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.icons.markupFilled.path,
              height: 18,
              color: color,
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: kGrayColor),
            ),
          ],
        ),
      ),
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tags = [
      _TagData(
        color: Theme.of(context).primaryColor,
        title: 'Design',
      ),
      _TagData(
        color: Theme.of(context).colorScheme.secondary,
        title: 'Work',
      ),
      _TagData(
        color: Theme.of(context).colorScheme.tertiary,
        title: 'Friends',
      ),
      _TagData(
        color: Theme.of(context).colorScheme.error,
        title: 'Family',
      ),
    ];

    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(Assets.icons.angleDown.path, width: 16),
            SizedBox(width: kDefaultPadding / 4),
            SvgPicture.asset(Assets.icons.markup.path, width: 20),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              'Tags',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: kGrayColor),
            ),
            Spacer(),
            MaterialButton(
              padding: EdgeInsets.all(10),
              minWidth: 40,
              onPressed: () {
                // TODO: Handle add tag
              },
              child: Icon(
                Icons.add,
                color: kGrayColor,
                size: 20,
              ),
            )
          ],
        ),
        SizedBox(height: kDefaultPadding / 2),
        ...tags.map((tag) => TagWidget(
              color: tag.color,
              title: tag.title,
              onTap: () {
                // TODO: Handle tag tap
              },
            )),
      ],
    );
  }
}

class _TagData {
  final Color color;
  final String title;

  _TagData({
    required this.color,
    required this.title,
  });
}
