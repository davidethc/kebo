import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kebo_app/core/data/entities/institution_entity/institution_entity.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';

class ItemCategory extends StatelessWidget {
  final InstitutionEntity institution;
  final VoidCallback onTap;
  const ItemCategory({
    super.key,
    required this.institution,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.w,
        height: 78,
        decoration: BoxDecoration(
            color: const Color(0xfff1f4f8),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.all(8),
              child: SvgPicture.network(
                institution.logo,
                height: 70,
                width: 70,
                fit: BoxFit.scaleDown,
              ),
            ),
            Expanded(
              child: Text(
                institution.displayName,
                style:
                    context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
