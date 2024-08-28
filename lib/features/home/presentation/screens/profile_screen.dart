import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/local/local_data.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/di/injection.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/dialog/confirm_dialog.dart';
import 'package:kebo_app/core/utils/dialog/feature_under_development.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/cached_image/cached_image.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/features/home/presentation/cubit/profile/profile_cubit.dart';
import 'package:kebo_app/features/home/presentation/widgets/item_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late ProfileCubit cubit;
  UserProvider get userProvider => getIt<UserProvider>();

  @override
  void initState() {
    super.initState();
    cubit = context.read<ProfileCubit>();
  }

  void _blocListener(BuildContext context, ProfileState state) {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: AppAppBar.withLeading(title: S.current.profile),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfile(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16)
                    .copyWith(bottom: 10),
                child: Text(S.current.account,
                    style: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 16)),
              ),
              ColumnBuilder(
                data: accounts,
                itemBuilder: (index) => ItemProfile(
                  data: accounts[index],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16)
                    .copyWith(bottom: 10),
                child: Text(S.current.general,
                    style: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 16)),
              ),
              ColumnBuilder(
                data: generals,
                itemBuilder: (index) => ItemProfile(
                  data: generals[index],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  List get accounts => [
        {
          "icon": Icons.language_outlined,
          "content": S.current.language,
          'onTap': () => context.navigate(AppScreens.language),
        },
        {
          "icon": Icons.notifications_none,
          "content": S.current.notificationSetting,
          'onTap': () => context.navigate(AppScreens.notification),
        },
        {
          "icon": Icons.account_circle_outlined,
          "content": S.current.editProfie,
          'onTap': () => context.navigate(AppScreens.editProfile),
        }
      ];

  List get generals => [
        {
          "icon": Icons.help_outline_rounded,
          "content": S.current.support,
          'onTap': () => context.navigate(AppScreens.webviewLink,
              arguments: 'https://www.kebo.app/contacts'),
        },
        {
          "icon": Icons.privacy_tip_rounded,
          "content": S.current.termAndCondition,
          'onTap': () => context.navigate(AppScreens.webviewLink,
              arguments: 'https://www.kebo.app/terms'),
        },
        {
          "icon": Icons.share,
          "content": S.current.inviteFriends,
          'onTap': () => context.navigate(AppScreens.invite),
        },
        {
          "icon": Icons.chat,
          "content": S.current.talkSomeone,
          'onTap': () => context.launchWhatsapp(),
        },
        {
          "icon": Icons.video_chat_sharp,
          "content": S.current.scheduleCall,
          'onTap': () => context.navigate(
                AppScreens.webviewLink,
                arguments: userProvider.currentUser.calendarURL,
              ),
        },
        {
          "icon": Icons.logout,
          "content": S.current.logOut,
          'onTap': () => showConfirmDialog(
                context,
                title: S.current.logOut,
                content: S.current.youWantLogout,
                onTap: () {
                  LocalDataHelper.instance.clearData();
                  context.navigate(AppScreens.login, clearStack: true);
                },
              ),
        }
      ];

  Widget _buildProfile() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  border: Border.all(color: Colors.green, width: 2)),
              child: CachedImage(
                imageUrl: userProvider.currentUser.icon.trim(),
                width: 60,
                height: 60,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: S.current.userId(': '),
                      style: context.theme.textTheme.bodyLarge
                          ?.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: userProvider.currentUser.sub
                          .split('-')
                          .last
                          .toUpperCase(),
                      style: context.theme.textTheme.bodyLarge
                          ?.copyWith(fontSize: 12),
                    )
                  ],
                ),
              ),
              Text(
                userProvider.currentUser.name,
                style: context.theme.textTheme.bodyLarge
                    ?.copyWith(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Text(
                userProvider.currentUser.email,
                style: context.theme.textTheme.bodyLarge
                    ?.copyWith(fontSize: 14, color: AppColors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
