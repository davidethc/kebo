import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/di/injection.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:share_plus/share_plus.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({super.key});

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
  UserProvider get userProvider => getIt<UserProvider>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar.withLeading(title: S.current.inviteFriends),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Icon(
            FontAwesomeIcons.userFriends,
            size: 100,
            color: AppColors.accentPrimary,
          ),
          const SizedBox(height: 20),
          Text(
            S.current.inviteYourFriend,
            style: context.theme.textTheme.titleSmall,
          ),
          const SizedBox(height: 30),
          Text(
            S.current.referYouFriend,
            style: context.theme.textTheme.bodyLarge,
          ),
          const Spacer(),
          Container(
            height: 50,
            width: context.w,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.alternate)),
            child: Center(
              child: Text(
                userProvider.currentUser.getLink,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    context.theme.textTheme.bodyLarge?.copyWith(fontSize: 12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () =>
                        context.copyClip(userProvider.currentUser.getLink),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: AppColors.accentPrimary,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(FontAwesomeIcons.copy,
                              color: Colors.white),
                          const SizedBox(width: 10),
                          Text(
                            S.current.copy,
                            style: context.theme.textTheme.bodyLarge
                                ?.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                GestureDetector(
                  onTap: () => Share.share(userProvider.currentUser.getLink),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.accentPrimary)),
                    child: const Icon(FontAwesomeIcons.share),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
