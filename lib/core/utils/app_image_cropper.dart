import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';

import '../l10n/generated/l10n.dart';

enum AppImageAspectRatio {
  circle,
  poster,
}

extension AppImageCropAspectRatio on AppImageAspectRatio {
  CropAspectRatio get asCropAspectRatio {
    switch (this) {
      case AppImageAspectRatio.circle:
        return const CropAspectRatio(ratioX: 1, ratioY: 1);
      case AppImageAspectRatio.poster:
        return const CropAspectRatio(ratioX: 2, ratioY: 3);
    }
  }

  CropStyle get asCropStyle {
    switch (this) {
      case AppImageAspectRatio.circle:
        return CropStyle.circle;
      case AppImageAspectRatio.poster:
        return CropStyle.rectangle;
    }
  }
}

abstract class AppImageCropper {
  static Future<File?> cropImage(
      BuildContext context, File fileAsset, AppImageAspectRatio aspectRatio,
      {bool lockRatio = true}) async {
    CroppedFile? croppedFile;
    try {
      croppedFile = await ImageCropper().cropImage(
        sourcePath: fileAsset.path,
        aspectRatio: aspectRatio.asCropAspectRatio,
        cropStyle: aspectRatio.asCropStyle,
        aspectRatioPresets: [
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.square,
        ],
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: S.of(context).cropImage,
            toolbarColor: AppColors.accentPrimary,
            toolbarWidgetColor: Colors.white,
            activeControlsWidgetColor: AppColors.accentPrimary,
            lockAspectRatio: lockRatio,
            hideBottomControls: true,
          ),
          IOSUiSettings(
            title: S.of(context).cropImage,
            aspectRatioLockEnabled: lockRatio,
          ),
        ],
      );
    } catch (e) {
      return null;
    }

    return croppedFile?.path == null ? null : File(croppedFile!.path);
  }
}
