import 'package:flutter/material.dart';
import 'package:outlook/models/Email.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../extensions.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({
    super.key,
    this.isActive = true,
    required this.email,
    required this.press,
  });

  final bool isActive;
  final Email email;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: InkWell(
        onTap: press,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: isActive ? kPrimaryColor : kBgDarkColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(email.image!),
                        ),
                      ),
                      const SizedBox(width: kDefaultPadding / 2),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: "${email.name} \n",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: isActive ? Colors.white : kTextColor,
                            ),
                            children: [
                              TextSpan(
                                text: email.subject,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color:
                                          isActive ? Colors.white : kTextColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            email.time!,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: isActive ? Colors.white70 : null,
                                    ),
                          ),
                          const SizedBox(height: 5),
                          if (email.isAttachmentAvailable == true)
                            SvgPicture.asset(
                              "assets/Icons/Paperclip.svg",
                              colorFilter: ColorFilter.mode(
                                isActive ? Colors.white70 : kGrayColor,
                                BlendMode.srcIn,
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding / 2),
                  Text(
                    email.body!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          height: 1.5,
                          color: isActive ? Colors.white70 : null,
                        ),
                  )
                ],
              ),
            ).addNeumorphism(
              blurRadius: 15,
              borderRadius: 15,
              offset: const Offset(5, 5),
              topShadowColor: Colors.white60,
              bottomShadowColor: const Color(0xFF234395).withOpacity(0.15),
            ),
            if (email.isChecked == false)
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kBadgeColor,
                  ),
                ).addNeumorphism(
                  blurRadius: 4,
                  borderRadius: 8,
                  offset: const Offset(2, 2),
                ),
              ),
            if (email.tagColor != null)
              Positioned(
                left: 8,
                top: 0,
                child: SvgPicture.asset(
                  "assets/Icons/Markup filled.svg",
                  height: 18,
                  colorFilter: ColorFilter.mode(
                    email.tagColor!,
                    BlendMode.srcIn,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
