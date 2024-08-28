// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kebo_app/core/data/errors/app_failure.dart';
import 'package:kebo_app/core/utils/app_image_cropper.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';

import '../../constants/theme/app_colors.dart';
import '../../l10n/generated/l10n.dart';
import '../app_image_picker.dart';
import '../widgets/buttons/app_button.dart';

mixin ImagePickerMixin {
  void pickProfileImage({
    required BuildContext context,
    required Function(AppFailure) onFailure,
    required Function(File file) onImagePicked,
  }) async {
    final src = await pickImageSource(context);

    if (src != null) {
      final result = await AppImagePicker.getImages(
          aspectRatio: AppImageAspectRatio.circle,
          context: context,
          imageSource: src,
          singleSelection: true,
          doCrop: true);
      result.fold(
        onFailure,
        (r) {
          if (r.isNotEmpty) {
            onImagePicked(r.first);
          }
        },
      );
    }
  }

  void pickGalleryImages({
    required BuildContext context,
    required Function(AppFailure) onFailure,
    required Function(List<File>) onImagesPicked,
  }) async {
    final src = await pickImageSource(context);
    if (src != null) {
      final result = await AppImagePicker.getImages(
        aspectRatio: AppImageAspectRatio.poster,
        context: context,
        imageSource: src,
        singleSelection: false,
      );

      result.fold(onFailure, onImagesPicked);
    } else {
      onImagesPicked([]);
    }
  }

  Future<dynamic> pickImageSource(BuildContext context) => (Platform.isIOS
      ? _pickImageSourceCupertino
      : _pickImageSourceMaterial)(context);

  Future<dynamic> _pickImageSourceCupertino(BuildContext context) =>
      showCupertinoModalPopup<void>(
          context: context,
          builder: (BuildContext context) {
            return CupertinoActionSheet(
              actions: <CupertinoActionSheetAction>[
                CupertinoActionSheetAction(
                  onPressed: () => Navigator.pop(context, ImageSource.camera),
                  child: _ActionSheetItem(title: S.of(context).camera),
                ),
                CupertinoActionSheetAction(
                  onPressed: () => Navigator.pop(context, ImageSource.gallery),
                  child: _ActionSheetItem(title: S.of(context).gallery),
                )
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () => Navigator.pop(context),
                child: Text(S.of(context).abort,
                    style: const TextStyle(color: Colors.red)),
              ),
            );
          });

  Future<dynamic> _pickImageSourceMaterial(BuildContext context) =>
      showModalBottomSheet<void>(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: Colors.white,
        builder: (BuildContext context) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              ColumnBuilder(
                  data: ImageSource.values,
                  itemBuilder: (index) =>
                      _buildSourceButton(context, ImageSource.values[index])),
              const SizedBox(height: 12),
              SimpleDialogOption(
                onPressed: Navigator.of(context).pop,
                child: Text(
                  S.of(context).abort,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.errorColor),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );

  Widget _buildSourceButton(BuildContext context, ImageSource src) {
    return AppButton.primary(
      onTap: () => Navigator.pop(context, src),
      label: src.asString(context),
    );
  }
}

class _ActionSheetItem extends StatelessWidget {
  final String title;
  const _ActionSheetItem({required this.title});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(title, overflow: TextOverflow.ellipsis)],
      );
}
