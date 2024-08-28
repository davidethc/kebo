import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/entities.dart';
import 'package:kebo_app/core/data/enums/gender_enum.dart';
import 'package:kebo_app/core/data/errors/app_input_errors.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_time.dart';
import 'package:kebo_app/core/utils/validators/app_input_validator.required.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

@Injectable()
class EditProfileCubit extends Cubit<EditProfileState> {
  final UserProvider _userProvider;
  final AccountService _accountService;
  EditProfileCubit(
    this._userProvider,
    this._accountService,
  ) : super(const EditProfileState());

  void initial() async {
    emit(state.copyWith(isLoading: true));
    final res = await _accountService.getUserInfo();
    res.fold(
      (left) => emit(state.copyWith(failure: left, isLoading: false)),
      (right) {
        final user = UserEntity.fromJson(right['result']);
        _userProvider.setup(user);
        emit(
          state.copyWith(
            currentUser: user,
            name: user.name,
            familyName: user.familyName,
            birthDate: DateTime.parse(user.birthdate),
            gender: user.getGender,
            isLoading: false,
          ),
        );
      },
    );
  }

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void onChangedGender(Gender value) => emit(state.copyWith(gender: value));

  void onChangedDate(DateTime dateTime) =>
      emit(state.copyWith(birthDate: dateTime));

  void onChangedName(String name) {
    emit(state.copyWith(
      name: name,
      errorName: AppInputValidatorRequired.dirty(name).error,
    ));
  }

  void onFocusChangedName(bool focused) {
    emit(state.copyWith(
      focusStatusName: focused,
      errorName:
          focused ? AppInputValidatorRequired.dirty(state.name).error : null,
    ));
  }

  void onChangedFamilyName(String familyName) {
    emit(state.copyWith(
      familyName: familyName,
      errorFamilyName: AppInputValidatorRequired.dirty(familyName).error,
    ));
  }

  void onFocusChangedFamilyName(bool focused) {
    emit(state.copyWith(
      focusStatusFamilyName: focused,
      errorFamilyName: focused
          ? AppInputValidatorRequired.dirty(state.familyName).error
          : null,
    ));
  }

  void onUpdate() async {
    emit(state.copyWith(
      errorName: AppInputValidatorRequired.dirty(state.name).error,
      errorFamilyName: AppInputValidatorRequired.dirty(state.familyName).error,
    ));
    if (state.errorName != null || state.errorFamilyName != null) {
      return;
    }
    emit(state.copyWith(isProcessing: true));
    final res = await _accountService.updateInfo(
      name: state.name,
      familyName: state.familyName,
      bithdate: state.birthDate!.dateFormat,
      gender: state.gender.value(),
    );
    res.fold(
      (left) => emit(state.copyWith(isProcessing: false, failure: left)),
      (right) => emit(
        state.copyWith(
          isProcessing: false,
          failure: AppFailure.success(msg: S.current.updateProfileSuccess),
        ),
      ),
    );
  }
}
