// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:kebo_app/core/utils/app_image_cropper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kebo_app/core/data/errors/app_failure.dart';
import 'package:kebo_app/core/utils/app_permission_manager.dart';

import '../l10n/generated/l10n.dart';

extension ImageSourceAsString on ImageSource {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case ImageSource.camera:
        return s.camera;
      case ImageSource.gallery:
        return s.gallery;
    }
  }
}

abstract class AppImagePicker {
  static Future<Either<AppFailure, List<File>>> getImages({
    required BuildContext context,
    ImageSource imageSource = ImageSource.gallery,
    AppImageAspectRatio aspectRatio = AppImageAspectRatio.circle,
    bool singleSelection = true,
    bool doCrop = false,
  }) async {
    // No need to request gallery permission since it is 'requestLegacyExternalStorage'
    if (imageSource == ImageSource.camera) {
      final AppFailure? status = await AppPermissionManager.ensure(
          permission: imageSource == ImageSource.camera
              ? AppPermission.camera
              : AppPermission.gallery);

      if (status != null) {
        return Left(status);
      }
    }

    final List<File> files =
        await _pickImage(imageSource, singleSelection: singleSelection);

    List<File> resultFiles = [];
    if (doCrop) {
      for (final File f in files) {
        final File? croppedFile =
            await AppImageCropper.cropImage(context, f, aspectRatio);
        if (croppedFile != null) resultFiles.add(croppedFile);
      }
    } else {
      resultFiles = files;
    }

    return Right(resultFiles);
  }

  static Future<List<File>> _pickImage(ImageSource imageSource,
      {bool singleSelection = true}) async {
    final List<File> files = [];

    try {
      final ImagePicker picker = ImagePicker();
      if (imageSource == ImageSource.gallery && !singleSelection) {
        final List<XFile> images = await picker.pickMultiImage();
        for (final image in images) {
          files.add(File(image.path));
        }
      } else {
        final XFile? image = await picker.pickImage(source: imageSource);
        if (image != null) files.add(File(image.path));
      }
      return files;
    } catch (e) {
      return files;
    }
  }
}
