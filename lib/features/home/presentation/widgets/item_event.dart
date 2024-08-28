import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/entities/event_category/event_category.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/cached_image/cached_image.dart';

class ItemEvent extends StatelessWidget {
  final EventEntity event;
  const ItemEvent({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
              child: CachedImage(
                imageUrl: event.thumnail,
                height: 120,
                width: context.w,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Events',
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(fontSize: 12, color: AppColors.accentPrimary),
                ),
                const SizedBox(height: 2),
                Text(
                  event.title,
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(fontSize: 16, color: AppColors.black),
                ),
                const SizedBox(height: 2),
                Text(
                  event.description,
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(fontSize: 14, color: AppColors.black),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () => context.launchURL(event.url),
                  child: Container(
                    height: 52,
                    width: 70,
                    decoration: BoxDecoration(
                        color: const Color(0xffee8b60),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        S.current.view,
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                            fontSize: 16, color: AppColors.accentPrimary),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
