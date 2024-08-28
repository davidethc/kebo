import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/institution_entity/form_entity/form_entity.dart';
import 'package:kebo_app/core/data/entities/institution_entity/institution_entity.dart';
import 'package:kebo_app/core/data/entities/institution_entity/institution_entity/institution_entity.dart';
import 'package:kebo_app/core/data/entities/institution_entity/value_entity/value_entity.dart';
import 'package:kebo_app/core/data/entities/product_entity/product_entity.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import '../../../../../core/data/errors/app_failure.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/export.dart';
import 'package:encrypt/encrypt.dart';

part 'connect_account_state.dart';
part 'connect_account_cubit.freezed.dart';

@Injectable()
class ConnectAccountCubit extends Cubit<ConnectAccountState> {
  final AccountService _accountService;
  ConnectAccountCubit(this._accountService)
      : super(const ConnectAccountState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial({
    required InstitutionEntity institution,
  }) async {
    LoggerUtils.d('aaa ${institution.toJson()}');
    emit(state.copyWith(isLoading: true));
    final res =
        await _accountService.getAviableAccount(institution: institution.name);
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) {
        FormEntity? tokenForm;
        if (right is List) {
          List<ProductEntity> accounts = [];
          right.forEach((e) => accounts.add(ProductEntity.fromJson(e)));
          if (accounts.isNotEmpty) {
            emit(state.copyWith(isDone: true, isLoading: false));
          }
        } else {
          FormEntity? tokenForm;
          switch (right['message']) {
            case 'account not synchronized':
              LoggerUtils.d('${right['message']}');
            case 'Sync in progress':
              LoggerUtils.d('${right['message']}');
              emit(state.copyWith(processing: true));
            case 'MFA token is needed to proceed':
              tokenForm = institution.formFields
                  .firstWhereOrNull((e) => e.name == 'token');
              resumeLink(
                institution.name,
                right['processId'],
              );
              LoggerUtils.d('${right['message']}');
              emit(state.copyWith(processing: true));
            default:
              LoggerUtils.d('default');
          }
          emit(state.copyWith(institution: institution, isLoading: false));
        }
        FormEntity? usernameTypeForm = institution.formFields
            .firstWhereOrNull((e) => e.name == 'username_type');
        FormEntity? usernameForm = institution.formFields
            .firstWhereOrNull((e) => e.name == 'username');
        FormEntity? passwordForm = institution.formFields
            .firstWhereOrNull((e) => e.name == 'password');

        emit(
          state.copyWith(
            institution: institution,
            usernameTypeForm: usernameTypeForm,
            usernameForm: usernameForm,
            passwordForm: passwordForm,
            listType: usernameTypeForm?.values ?? [],
            tokenForm: tokenForm,
            isLoading: false,
          ),
        );
      },
    );
  }

  void onChangedType(int index) => emit(state.copyWith(selectedType: index));

  void resumeLink(String institution, String token) async {
    final res = await _accountService.resumeLinkSync(
        institution: institution, token: token);
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) => emit(state.copyWith(isLoading: false)),
    );
  }

  void onTogglePasswordVisibility() => emit(state.copyWith(
      passwordVisibilityStatus: !state.passwordVisibilityStatus));

  void onChangedUsername(String username) {
    emit(state.copyWith(
      username: username,
      errorUsername: validateMobile(
        value: state.username,
        pattern: state.selectedType != -1
            ? state.listType[state.selectedType].validation
            : state.usernameForm?.validation ?? '',
        message: state.selectedType != -1
            ? state.listType[state.selectedType].validationMessage
            : state.usernameForm?.validationMessage ?? '',
      ),
    ));
  }

  void onChangedToken(String token) {
    emit(state.copyWith(
      token: token,
      errorToken: validateMobile(
        value: state.token,
        pattern: state.tokenForm?.validation ?? '',
        message: state.tokenForm?.validationMessage ?? '',
      ),
    ));
  }

  void onChangedPassword(String password) {
    emit(state.copyWith(
      password: password,
      errorPassword: validateMobile(
        value: state.password,
        pattern: state.passwordForm?.validation ?? '',
        message: state.passwordForm?.validationMessage ?? '',
      ),
    ));
  }

  void onFocusChangedUsername(bool focused) {
    emit(state.copyWith(
      focusStatusUsername: focused,
      errorUsername: focused
          ? validateMobile(
              value: state.username,
              pattern: state.selectedType != -1
                  ? state.listType[state.selectedType].validation
                  : state.usernameForm?.validation ?? '',
              message: state.selectedType != -1
                  ? state.listType[state.selectedType].validationMessage
                  : state.usernameForm?.validationMessage ?? '',
            )
          : null,
    ));
  }

  void onFocusChangedToken(bool focused) {
    emit(state.copyWith(
      focusStatusToken: focused,
      errorToken: focused
          ? validateMobile(
              value: state.token,
              pattern: state.tokenForm?.validation ?? '',
              message: state.tokenForm?.validationMessage ?? '',
            )
          : null,
    ));
  }

  void onFocusChangedPassword(bool focused) {
    emit(state.copyWith(
      focusStatusPassword: focused,
      errorPassword: focused
          ? validateMobile(
              value: state.password,
              pattern: state.passwordForm?.validation ?? '',
              message: state.passwordForm?.validationMessage ?? '',
            )
          : null,
    ));
  }

  Future<void> onAddAccount() async {
    emit(state.copyWith(
      errorUsernameType: validateType(),
      errorUsername: validateMobile(
        value: state.username,
        pattern: state.selectedType != -1
            ? state.listType[state.selectedType].validation
            : state.usernameForm?.validation ?? '',
        message: state.selectedType != -1
            ? state.listType[state.selectedType].validationMessage
            : state.usernameForm?.validationMessage ?? '',
      ),
      errorPassword: validateMobile(
        value: state.password,
        pattern: state.passwordForm?.validation ?? '',
        message: state.passwordForm?.validationMessage ?? '',
      ),
      errorToken: validateMobile(
        value: state.token,
        pattern: state.tokenForm?.validation ?? '',
        message: state.tokenForm?.validationMessage ?? '',
      ),
    ));
    if (state.errorUsername != null ||
        state.errorPassword != null ||
        state.errorToken != null) {
      return;
    }
    emit(state.copyWith(isProcessing: true));
    RSAPublicKey publicKey = loadRSAPublicKeyFromPEM(publicKeyPEM);
    String mensaje = sendMessage();

    LoggerUtils.d('aaaa $mensaje');

    Uint8List bytesMensaje = Uint8List.fromList(utf8.encode(mensaje));
    Uint8List encryptedBytes = RSAEncrypter().encrypt(bytesMensaje, publicKey);
    String textoEncriptado = base64.encode(encryptedBytes);
    final result =
        await _accountService.linkInstitution(message: textoEncriptado);
    result.fold(
      (l) => emit(state.copyWith(failure: l, isProcessing: false)),
      (r) {
        emit(state.copyWith(processing: true, isProcessing: false));
        emit(state.copyWith(processing: false));
      },
    );
  }

  String sendMessage() {
    if (state.tokenForm != null) {
      if (state.usernameTypeForm != null) {
        return '{"institution": "${state.institution?.name}", "username_type": "${state.listType[state.selectedType].code}", "username": "${state.username}", "password": "${state.password}", "token": "${state.token}"}';
      } else {
        return '{"institution": "${state.institution?.name}", "username": "${state.username}", "password": "${state.password}", "token": "${state.token}"}';
      }
    } else {
      if (state.usernameTypeForm != null) {
        return '{"institution": "${state.institution?.name}", "username_type": "${state.listType[state.selectedType].code}", "username": "${state.username}", "password": "${state.password}"}';
      } else {
        return '{"institution": "${state.institution?.name}", "username": "${state.username}", "password": "${state.password}"}';
      }
    }
  }

  bool validateType() {
    if (state.usernameTypeForm == null) {
      return false;
    } else {
      if (state.selectedType == -1) {
        return true;
      }
    }
    return false;
  }

  String? validateMobile({
    required String value,
    required String pattern,
    required String message,
  }) {
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return message;
    }
    return null;
  }
}

RSAPublicKey loadRSAPublicKeyFromPEM(String pemString) {
  final keyParser = RSAKeyParser();
  return keyParser.parse(pemString) as RSAPublicKey;
}

class RSAEncrypter {
  Uint8List encrypt(Uint8List data, RSAPublicKey publicKey) {
    final encryptor = OAEPEncoding(RSAEngine())
      ..init(true, PublicKeyParameter<RSAPublicKey>(publicKey));
    return encryptor.process(data);
  }
}

String publicKeyPEM = '''
-----BEGIN PUBLIC KEY-----
MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAkWJKc7/lQ0WE7A2nBZyX
YgM8/MfgUZRwb+8ovcPp0nCB60V7Nnk3idwmFiZ2vEbh6nofkxhfnDtlYZr3b427
e5hCSEwzOvvhJjkIV/HUKSr/jIgr3OJylOhEmni8tG5K6ozDZx3IlNLEHCtj728R
h7sIatZdE6IfONhHhvrCBw7M11iA1yl/cDdiwwbPIsmud6c75dBi+tDlbNzhdig/
ka1RDn8xuar1IT5AxuH+yXpk9m2dpYkEogVbCocPlR8uGxalPzxDgYCQypyZmcYR
eflR3e4pbAljVvqW5tlLR6PO4qUmaBllPgkx1aUYiEk1is0uY+PhiiHBuesnFNBR
xZuGLgQp7OpLUKQ7bH9qBR1T8qSx3aoz6se9RQB8O6q4E/WrOT4inSX3AfNklSYY
ZKbJOTP0lXgocln9jXsaDXiiReNGFTMo56vE6ruGz6NJZIxCDhWgoYQ0mQe5NsMT
uLlYl0Dnu++9yYwbr2D4JZkjjS0InPKbQAKe29ygv9ivNqgOMi8VHibdN96Ew6S1
bA26HZ5Vgk22ZxBY/VFVStZKU2VCXo1JrVBsxJUXcuw8nDJqUI5S7z3oziOHPNS7
7wNzTBqWDx5to7pX0xigkdGBXy4fCd16FJYiwcgKspM2zglURzuwFNps+dAPESnt
M62u+Y89pWJ6YPOgcqRW1OECAwEAAQ==
-----END PUBLIC KEY-----
  ''';
