// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Kebo`
  String get appName {
    return Intl.message(
      'Kebo',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Cámara`
  String get camera {
    return Intl.message(
      'Cámara',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Galería`
  String get gallery {
    return Intl.message(
      'Galería',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Recortar Imagen`
  String get cropImage {
    return Intl.message(
      'Recortar Imagen',
      name: 'cropImage',
      desc: '',
      args: [],
    );
  }

  /// `Puedes enviar un máximo de {amount} imágenes a la vez`
  String maxImageLimit(int amount) {
    return Intl.message(
      'Puedes enviar un máximo de $amount imágenes a la vez',
      name: 'maxImageLimit',
      desc: '',
      args: [amount],
    );
  }

  /// `La contraseña debe tener al menos 8 caracteres de longitud`
  String get inputErrorPasswordTooShort {
    return Intl.message(
      'La contraseña debe tener al menos 8 caracteres de longitud',
      name: 'inputErrorPasswordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `La contraseña debe contener al menos un dígito`
  String get inputErrorPasswordNoDigit {
    return Intl.message(
      'La contraseña debe contener al menos un dígito',
      name: 'inputErrorPasswordNoDigit',
      desc: '',
      args: [],
    );
  }

  /// `La contraseña debe contener al menos un carácter especial`
  String get inputErrorPasswordSpecialChar {
    return Intl.message(
      'La contraseña debe contener al menos un carácter especial',
      name: 'inputErrorPasswordSpecialChar',
      desc: '',
      args: [],
    );
  }

  /// `La contraseña no debe contener caracteres especiales`
  String get inputErrorPasswordHasSpecialChar {
    return Intl.message(
      'La contraseña no debe contener caracteres especiales',
      name: 'inputErrorPasswordHasSpecialChar',
      desc: '',
      args: [],
    );
  }

  /// `La contraseña debe contener al menos una letra mayúscula`
  String get inputErrorPasswordNoUppercase {
    return Intl.message(
      'La contraseña debe contener al menos una letra mayúscula',
      name: 'inputErrorPasswordNoUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Las contraseñas no coinciden`
  String get inputErrorPasswordsDoNotMatch {
    return Intl.message(
      'Las contraseñas no coinciden',
      name: 'inputErrorPasswordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `El correo electrónico no puede estar vacío`
  String get inputErrorEmailEmpty {
    return Intl.message(
      'El correo electrónico no puede estar vacío',
      name: 'inputErrorEmailEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, introduce una dirección de correo electrónico válida`
  String get inputErrorEmailInvalid {
    return Intl.message(
      'Por favor, introduce una dirección de correo electrónico válida',
      name: 'inputErrorEmailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `El nombre no puede estar vacío`
  String get inputErrorNameEmpty {
    return Intl.message(
      'El nombre no puede estar vacío',
      name: 'inputErrorNameEmpty',
      desc: '',
      args: [],
    );
  }

  /// `El número de teléfono no puede estar vacío`
  String get inputErrorPhoneNumberEmpty {
    return Intl.message(
      'El número de teléfono no puede estar vacío',
      name: 'inputErrorPhoneNumberEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, introduce un número de teléfono con código de área`
  String get inputErrorPhoneNumberInvalidAreaCode {
    return Intl.message(
      'Por favor, introduce un número de teléfono con código de área',
      name: 'inputErrorPhoneNumberInvalidAreaCode',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, introduce un número de teléfono válido`
  String get inputErrorPhoneNumberInvalid {
    return Intl.message(
      'Por favor, introduce un número de teléfono válido',
      name: 'inputErrorPhoneNumberInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, proporciona una pasión tuya`
  String get inputErrorPassionEmpty {
    return Intl.message(
      'Por favor, proporciona una pasión tuya',
      name: 'inputErrorPassionEmpty',
      desc: '',
      args: [],
    );
  }

  /// `El título no puede estar vacío`
  String get inputErrorTitleMustNotBeEmpty {
    return Intl.message(
      'El título no puede estar vacío',
      name: 'inputErrorTitleMustNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `La descripción no puede estar vacía`
  String get inputErrorDescriptionMustNotBeEmpty {
    return Intl.message(
      'La descripción no puede estar vacía',
      name: 'inputErrorDescriptionMustNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar sesión`
  String get logOut {
    return Intl.message(
      'Cerrar sesión',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Sí`
  String get yes {
    return Intl.message(
      'Sí',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Enviar de nuevo`
  String get sendAgain {
    return Intl.message(
      'Enviar de nuevo',
      name: 'sendAgain',
      desc: '',
      args: [],
    );
  }

  /// `Aceptar`
  String get ok {
    return Intl.message(
      'Aceptar',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Seleccionar Fecha`
  String get chooseDate {
    return Intl.message(
      'Seleccionar Fecha',
      name: 'chooseDate',
      desc: '',
      args: [],
    );
  }

  /// `Abortar`
  String get abort {
    return Intl.message(
      'Abortar',
      name: 'abort',
      desc: '',
      args: [],
    );
  }

  /// `¿Estás seguro?`
  String get areYouSure {
    return Intl.message(
      '¿Estás seguro?',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `Se perderán todas las entradas.`
  String get allEntriesWillBeLost {
    return Intl.message(
      'Se perderán todas las entradas.',
      name: 'allEntriesWillBeLost',
      desc: '',
      args: [],
    );
  }

  /// `Sí, abortar`
  String get yesAbort {
    return Intl.message(
      'Sí, abortar',
      name: 'yesAbort',
      desc: '',
      args: [],
    );
  }

  /// `No, continuar`
  String get noContinue {
    return Intl.message(
      'No, continuar',
      name: 'noContinue',
      desc: '',
      args: [],
    );
  }

  /// `¿Estás seguro de que quieres eliminar tu cuenta?`
  String get sureDeleteAccount {
    return Intl.message(
      '¿Estás seguro de que quieres eliminar tu cuenta?',
      name: 'sureDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `¡Tus datos se eliminarán permanentemente y no se podrán recuperar!`
  String get sureDeleteAccountSubtitle {
    return Intl.message(
      '¡Tus datos se eliminarán permanentemente y no se podrán recuperar!',
      name: 'sureDeleteAccountSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sí, eliminar cuenta`
  String get yesDeleteAcc {
    return Intl.message(
      'Sí, eliminar cuenta',
      name: 'yesDeleteAcc',
      desc: '',
      args: [],
    );
  }

  /// `No, abortar`
  String get noAbort {
    return Intl.message(
      'No, abortar',
      name: 'noAbort',
      desc: '',
      args: [],
    );
  }

  /// `Sí, cerrar sesión`
  String get yesLogout {
    return Intl.message(
      'Sí, cerrar sesión',
      name: 'yesLogout',
      desc: '',
      args: [],
    );
  }

  /// `No, cerrar sesión`
  String get noLogout {
    return Intl.message(
      'No, cerrar sesión',
      name: 'noLogout',
      desc: '',
      args: [],
    );
  }

  /// `Toma el control de tus finanzas`
  String get takeControlOfYourFinances {
    return Intl.message(
      'Toma el control de tus finanzas',
      name: 'takeControlOfYourFinances',
      desc: '',
      args: [],
    );
  }

  /// `Inicio`
  String get home {
    return Intl.message(
      'Inicio',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Transacciones`
  String get transactions {
    return Intl.message(
      'Transacciones',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Reportes`
  String get reportes {
    return Intl.message(
      'Reportes',
      name: 'reportes',
      desc: '',
      args: [],
    );
  }

  /// `Análisis`
  String get analytics {
    return Intl.message(
      'Análisis',
      name: 'analytics',
      desc: '',
      args: [],
    );
  }

  /// `Cuenta`
  String get account {
    return Intl.message(
      'Cuenta',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Configuración de notificaciones`
  String get notificationSetting {
    return Intl.message(
      'Configuración de notificaciones',
      name: 'notificationSetting',
      desc: '',
      args: [],
    );
  }

  /// `Perfil`
  String get profile {
    return Intl.message(
      'Perfil',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Editar perfil`
  String get editProfie {
    return Intl.message(
      'Editar perfil',
      name: 'editProfie',
      desc: '',
      args: [],
    );
  }

  /// `Soporte`
  String get support {
    return Intl.message(
      'Soporte',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Términos y Condiciones`
  String get termAndCondition {
    return Intl.message(
      'Términos y Condiciones',
      name: 'termAndCondition',
      desc: '',
      args: [],
    );
  }

  /// `Invitar amigos`
  String get inviteFriends {
    return Intl.message(
      'Invitar amigos',
      name: 'inviteFriends',
      desc: '',
      args: [],
    );
  }

  /// `ID de Usuario{x}`
  String userId(Object x) {
    return Intl.message(
      'ID de Usuario$x',
      name: 'userId',
      desc: '',
      args: [x],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `¡Hola 👋🏼!`
  String get hello {
    return Intl.message(
      '¡Hola 👋🏼!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Estamos sincronizando tus transacciones`
  String get weAreSynchronizing {
    return Intl.message(
      'Estamos sincronizando tus transacciones',
      name: 'weAreSynchronizing',
      desc: '',
      args: [],
    );
  }

  /// `Este proceso solo tomará unos segundos. Utilizamos Belvo para sincronizar tus transacciones con Kebo. Las actualizaciones se realizan dos veces al día, pero pueden ser en tiempo real si tienes una suscripción Pro. Obtén más información sobre cómo funciona la Banca Abierta {link}.`
  String thisProcessWillTakeAFew(Object link) {
    return Intl.message(
      'Este proceso solo tomará unos segundos. Utilizamos Belvo para sincronizar tus transacciones con Kebo. Las actualizaciones se realizan dos veces al día, pero pueden ser en tiempo real si tienes una suscripción Pro. Obtén más información sobre cómo funciona la Banca Abierta $link.',
      name: 'thisProcessWillTakeAFew',
      desc: '',
      args: [link],
    );
  }

  /// `Cerrar sesión`
  String get logout {
    return Intl.message(
      'Cerrar sesión',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `¿Quieres cerrar sesión?`
  String get youWantLogout {
    return Intl.message(
      '¿Quieres cerrar sesión?',
      name: 'youWantLogout',
      desc: '',
      args: [],
    );
  }

  /// `¡Empecemos!`
  String get letStart {
    return Intl.message(
      '¡Empecemos!',
      name: 'letStart',
      desc: '',
      args: [],
    );
  }

  /// `La mejor aplicación para mejorar tu salud financiera`
  String get theFirstAppImproveYourFinancial {
    return Intl.message(
      'La mejor aplicación para mejorar tu salud financiera',
      name: 'theFirstAppImproveYourFinancial',
      desc: '',
      args: [],
    );
  }

  /// `Bienvenido a`
  String get welcomeTo {
    return Intl.message(
      'Bienvenido a',
      name: 'welcomeTo',
      desc: '',
      args: [],
    );
  }

  /// `PASO {page}`
  String step(Object page) {
    return Intl.message(
      'PASO $page',
      name: 'step',
      desc: '',
      args: [page],
    );
  }

  /// `Omitir`
  String get skip {
    return Intl.message(
      'Omitir',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Escribe tu correo electrónico`
  String get typeYourEmail {
    return Intl.message(
      'Escribe tu correo electrónico',
      name: 'typeYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, introduce un correo electrónico válido para continuar`
  String get pleaseEnterValidEmail {
    return Intl.message(
      'Por favor, introduce un correo electrónico válido para continuar',
      name: 'pleaseEnterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Correo electrónico`
  String get email {
    return Intl.message(
      'Correo electrónico',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Continuar con Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continuar con Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continuar con Apple`
  String get continueWithApple {
    return Intl.message(
      'Continuar con Apple',
      name: 'continueWithApple',
      desc: '',
      args: [],
    );
  }

  /// `O regístrate con`
  String get orRegisterWith {
    return Intl.message(
      'O regístrate con',
      name: 'orRegisterWith',
      desc: '',
      args: [],
    );
  }

  /// `Continuar`
  String get continueText {
    return Intl.message(
      'Continuar',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `Nombre`
  String get firstName {
    return Intl.message(
      'Nombre',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Apellido`
  String get lastName {
    return Intl.message(
      'Apellido',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `¿Cómo te identificas?`
  String get howDoYouIdentify {
    return Intl.message(
      '¿Cómo te identificas?',
      name: 'howDoYouIdentify',
      desc: '',
      args: [],
    );
  }

  /// `Nos gustaría saber tu género para proporcionarte una experiencia más personalizada.`
  String get weWouldLikeToKnowGender {
    return Intl.message(
      'Nos gustaría saber tu género para proporcionarte una experiencia más personalizada.',
      name: 'weWouldLikeToKnowGender',
      desc: '',
      args: [],
    );
  }

  /// `Prefiero no elegir`
  String get iPreferNotToChoose {
    return Intl.message(
      'Prefiero no elegir',
      name: 'iPreferNotToChoose',
      desc: '',
      args: [],
    );
  }

  /// `¿Cuál es tu fecha de nacimiento?`
  String get whatIsYourDateOfBirth {
    return Intl.message(
      '¿Cuál es tu fecha de nacimiento?',
      name: 'whatIsYourDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Seleccionar Fecha`
  String get selectDate {
    return Intl.message(
      'Seleccionar Fecha',
      name: 'selectDate',
      desc: '',
      args: [],
    );
  }

  /// `Crea tu\ncontraseña`
  String get createYourPassword {
    return Intl.message(
      'Crea tu\ncontraseña',
      name: 'createYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get password {
    return Intl.message(
      'Contraseña',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar contraseña`
  String get confirmPassword {
    return Intl.message(
      'Confirmar contraseña',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa una contraseña segura \npara tu cuenta.`
  String get enterSecurePassword {
    return Intl.message(
      'Ingresa una contraseña segura \npara tu cuenta.',
      name: 'enterSecurePassword',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa tu número de\nteléfono.`
  String get inputYourPhone {
    return Intl.message(
      'Ingresa tu número de\nteléfono.',
      name: 'inputYourPhone',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, introduce un número válido \npara continuar.`
  String get pleaseEnterValidNumber {
    return Intl.message(
      'Por favor, introduce un número válido \npara continuar.',
      name: 'pleaseEnterValidNumber',
      desc: '',
      args: [],
    );
  }

  /// `Verifica tu número`
  String get verifyYourPhone {
    return Intl.message(
      'Verifica tu número',
      name: 'verifyYourPhone',
      desc: '',
      args: [],
    );
  }

  /// `Enviar un nuevo código`
  String get sendNewCode {
    return Intl.message(
      'Enviar un nuevo código',
      name: 'sendNewCode',
      desc: '',
      args: [],
    );
  }

  /// `Te enviaremos un mensaje de texto al número {phone}`
  String weWillTextYouNumber(Object phone) {
    return Intl.message(
      'Te enviaremos un mensaje de texto al número $phone',
      name: 'weWillTextYouNumber',
      desc: '',
      args: [phone],
    );
  }

  /// `Habilitar\nAutenticación\nBiométrica`
  String get enableBiometricAuthentication {
    return Intl.message(
      'Habilitar\nAutenticación\nBiométrica',
      name: 'enableBiometricAuthentication',
      desc: '',
      args: [],
    );
  }

  /// `Si habilitas esta opción, \nno necesitarás ingresar la contraseña\npara iniciar sesión`
  String get ifYouEnableThisOption {
    return Intl.message(
      'Si habilitas esta opción, \nno necesitarás ingresar la contraseña\npara iniciar sesión',
      name: 'ifYouEnableThisOption',
      desc: '',
      args: [],
    );
  }

  /// `¿Quieres activar last onotificaciones?`
  String get doYouWantEnableNotification {
    return Intl.message(
      '¿Quieres activar last onotificaciones?',
      name: 'doYouWantEnableNotification',
      desc: '',
      args: [],
    );
  }

  /// `Activar`
  String get activate {
    return Intl.message(
      'Activar',
      name: 'activate',
      desc: '',
      args: [],
    );
  }

  /// `Recomendaciones Personalizadas`
  String get personalizedRecommendations {
    return Intl.message(
      'Recomendaciones Personalizadas',
      name: 'personalizedRecommendations',
      desc: '',
      args: [],
    );
  }

  /// `Análisis de Gastos e Ingresos`
  String get expenseAndIncomeAnalysis {
    return Intl.message(
      'Análisis de Gastos e Ingresos',
      name: 'expenseAndIncomeAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Alertas de Gastos y Presupuestos`
  String get expenseAndBudgetAlerts {
    return Intl.message(
      'Alertas de Gastos y Presupuestos',
      name: 'expenseAndBudgetAlerts',
      desc: '',
      args: [],
    );
  }

  /// `¡Toma el Control de Tus\nFinanzas!`
  String get takeControllOfYourFinances {
    return Intl.message(
      '¡Toma el Control de Tus\nFinanzas!',
      name: 'takeControllOfYourFinances',
      desc: '',
      args: [],
    );
  }

  /// `Gracias por tomarte el tiempo para crear una cuenta con nosotros. Ahora, esta es la parte divertida, vamos a explorar la aplicación.`
  String get thankYouForTakingTheTime {
    return Intl.message(
      'Gracias por tomarte el tiempo para crear una cuenta con nosotros. Ahora, esta es la parte divertida, vamos a explorar la aplicación.',
      name: 'thankYouForTakingTheTime',
      desc: '',
      args: [],
    );
  }

  /// `Comenzar`
  String get start {
    return Intl.message(
      'Comenzar',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar sesión`
  String get login {
    return Intl.message(
      'Explora KeboApp',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa tu correo electrónico y tu contraseña de Kebo`
  String get enterEmailAndPassword {
    return Intl.message(
      'La mejor aplicación para mejorar tu salud financiera',
      name: 'enterEmailAndPassword',
      desc: '',
      args: [],
    );
  }

  /// `Crear Cuenta`
  String get createAccount {
    return Intl.message(
      'Crear Cuenta',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `¿Olvidaste tu contraseña?`
  String get forgotYourPassword {
    return Intl.message(
      '¿Olvidaste tu contraseña?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Balance General`
  String get balanceGeneral {
    return Intl.message(
      'Balance General',
      name: 'balanceGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Agregar cuenta`
  String get addAccount {
    return Intl.message(
      'Agregar cuenta',
      name: 'addAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sincronizar`
  String get synchronize {
    return Intl.message(
      'Sincronizar',
      name: 'synchronize',
      desc: '',
      args: [],
    );
  }

  /// `Selecciona tu cuenta`
  String get selectYourAccount {
    return Intl.message(
      'Selecciona tu cuenta',
      name: 'selectYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Buscar tu cuenta...`
  String get searchForYourAccount {
    return Intl.message(
      'Buscar tu cuenta...',
      name: 'searchForYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Bancos`
  String get banks {
    return Intl.message(
      'Bancos',
      name: 'banks',
      desc: '',
      args: [],
    );
  }

  /// `Impuestos`
  String get taxes {
    return Intl.message(
      'Impuestos',
      name: 'taxes',
      desc: '',
      args: [],
    );
  }

  /// `Aplicaciones Financieras`
  String get finApps {
    return Intl.message(
      'Aplicaciones Financieras',
      name: 'finApps',
      desc: '',
      args: [],
    );
  }

  /// `Categoría`
  String get category {
    return Intl.message(
      'Categoría',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Pregúntale a Kebo Wise...`
  String get askKebo {
    return Intl.message(
      'Pregúntale a Kebo Wise...',
      name: 'askKebo',
      desc: '',
      args: [],
    );
  }

  /// `Conecta una institución`
  String get connectYourAccount {
    return Intl.message(
      'Conecta una institución',
      name: 'connectYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa tus credenciales`
  String get enterYourCredentials {
    return Intl.message(
      'Ingresa tus credenciales',
      name: 'enterYourCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Usuario`
  String get user {
    return Intl.message(
      'Usuario',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Al continuar, aceptas la Política de Privacidad de `
  String get byContinuing {
    return Intl.message(
      'Al continuar, aceptas la Política de Privacidad de ',
      name: 'byContinuing',
      desc: '',
      args: [],
    );
  }

  /// `Belvo`
  String get belvo {
    return Intl.message(
      'Belvo',
      name: 'belvo',
      desc: '',
      args: [],
    );
  }

  /// `Agregar Transacciones Manualmente`
  String get manuallyAddTransactions {
    return Intl.message(
      'Agregar Transacciones Manualmente',
      name: 'manuallyAddTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Tu actividad reciente está abajo.`
  String get yourRecentActivity {
    return Intl.message(
      'Tu actividad reciente está abajo.',
      name: 'yourRecentActivity',
      desc: '',
      args: [],
    );
  }

  /// `Ver Detalles`
  String get viewDetails {
    return Intl.message(
      'Ver Detalles',
      name: 'viewDetails',
      desc: '',
      args: [],
    );
  }

  /// `Ver más`
  String get seeMore {
    return Intl.message(
      'Ver más',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `Ingresos`
  String get income {
    return Intl.message(
      'Ingresos',
      name: 'income',
      desc: '',
      args: [],
    );
  }

  /// `Ver`
  String get view {
    return Intl.message(
      'Ver',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `Gastos`
  String get expenses {
    return Intl.message(
      'Gastos',
      name: 'expenses',
      desc: '',
      args: [],
    );
  }

  /// `Ahorros`
  String get savings {
    return Intl.message(
      'Ahorros',
      name: 'savings',
      desc: '',
      args: [],
    );
  }

  /// `Metas`
  String get goals {
    return Intl.message(
      'Metas',
      name: 'goals',
      desc: '',
      args: [],
    );
  }

  /// `Masculino`
  String get male {
    return Intl.message(
      'Masculino',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Femenino`
  String get female {
    return Intl.message(
      'Femenino',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Día Anterior`
  String get previousDay {
    return Intl.message(
      'Día Anterior',
      name: 'previousDay',
      desc: '',
      args: [],
    );
  }

  /// `Día Actual`
  String get currentDay {
    return Intl.message(
      'Día Actual',
      name: 'currentDay',
      desc: '',
      args: [],
    );
  }

  /// `Diario`
  String get daily {
    return Intl.message(
      'Diario',
      name: 'daily',
      desc: '',
      args: [],
    );
  }

  /// `Semanal`
  String get weekly {
    return Intl.message(
      'Semanal',
      name: 'weekly',
      desc: '',
      args: [],
    );
  }

  /// `Mensual`
  String get monthly {
    return Intl.message(
      'Mensual',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `Últimos {x} días`
  String lastXDay(Object x) {
    return Intl.message(
      'Últimos $x días',
      name: 'lastXDay',
      desc: '',
      args: [x],
    );
  }

  /// `Cantidad de Transacción`
  String get amountOfTransaction {
    return Intl.message(
      'Cantidad de Transacción',
      name: 'amountOfTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Valor de Transacciones`
  String get valueOfTransactions {
    return Intl.message(
      'Valor de Transacciones',
      name: 'valueOfTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Métricas`
  String get metrics {
    return Intl.message(
      'Métricas',
      name: 'metrics',
      desc: '',
      args: [],
    );
  }

  /// `¿Cómo mejorar mi KeboScore?`
  String get howToImprove {
    return Intl.message(
      '¿Cómo mejorar mi KeboScore?',
      name: 'howToImprove',
      desc: '',
      args: [],
    );
  }

  /// `Basado en tus datos financieros, tu KeboScore es {score}, lo cual es considerado bueno.`
  String baseYourFinancial(Object score) {
    return Intl.message(
      'Basado en tus datos financieros, tu KeboScore es $score, lo cual es considerado bueno.',
      name: 'baseYourFinancial',
      desc: '',
      args: [score],
    );
  }

  /// `KeboScore`
  String get keboScore {
    return Intl.message(
      'KeboScore',
      name: 'keboScore',
      desc: '',
      args: [],
    );
  }

  /// ` ¡Hola, {user}!`
  String helloX(Object user) {
    return Intl.message(
      ' ¡Hola, $user!',
      name: 'helloX',
      desc: '',
      args: [user],
    );
  }

  /// `Sincronizado hace 3 minutos`
  String get synchronized {
    return Intl.message(
      'Sincronizado hace 3 minutos',
      name: 'synchronized',
      desc: '',
      args: [],
    );
  }

  /// `Idioma`
  String get language {
    return Intl.message(
      'Idioma',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Inglés`
  String get en {
    return Intl.message(
      'Inglés',
      name: 'en',
      desc: '',
      args: [],
    );
  }

  /// `Español`
  String get es {
    return Intl.message(
      'Español',
      name: 'es',
      desc: '',
      args: [],
    );
  }

  /// `En desarrollo`
  String get underDevelopment {
    return Intl.message(
      'En desarrollo',
      name: 'underDevelopment',
      desc: '',
      args: [],
    );
  }

  /// `Esta función está en desarrollo`
  String get thisFeatureIsUnderDevelopment {
    return Intl.message(
      'Esta función está en desarrollo',
      name: 'thisFeatureIsUnderDevelopment',
      desc: '',
      args: [],
    );
  }

  /// `Cargando`
  String get loading {
    return Intl.message(
      'Cargando',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Reporte`
  String get report {
    return Intl.message(
      'Reporte',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `{minute} minuto(s)`
  String xMinute(Object minute) {
    return Intl.message(
      '$minute minuto(s)',
      name: 'xMinute',
      desc: '',
      args: [minute],
    );
  }

  /// `Número de Teléfono`
  String get phone {
    return Intl.message(
      'Número de Teléfono',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Guardar`
  String get save {
    return Intl.message(
      'Guardar',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Agregar una nueva categoría`
  String get addNewCategory {
    return Intl.message(
      'Agregar una nueva categoría',
      name: 'addNewCategory',
      desc: '',
      args: [],
    );
  }

  /// `Crear categoría`
  String get createCategory {
    return Intl.message(
      'Crear categoría',
      name: 'createCategory',
      desc: '',
      args: [],
    );
  }

  /// `Descripción`
  String get description {
    return Intl.message(
      'Descripción',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Menores de 18 años`
  String get under18 {
    return Intl.message(
      'Menores de 18 años',
      name: 'under18',
      desc: '',
      args: [],
    );
  }

  /// `Entre {x} y {y} años`
  String betweenXtoY(Object x, Object y) {
    return Intl.message(
      'Entre $x y $y años',
      name: 'betweenXtoY',
      desc: '',
      args: [x, y],
    );
  }

  /// `65 años o más`
  String get upper65 {
    return Intl.message(
      '65 años o más',
      name: 'upper65',
      desc: '',
      args: [],
    );
  }

  /// `Teléfono o Correo electrónico`
  String get phoneOrEmail {
    return Intl.message(
      'Teléfono o Correo electrónico',
      name: 'phoneOrEmail',
      desc: '',
      args: [],
    );
  }

  /// `Este campo no puede estar vacío`
  String get inputErrorRequiredEmpty {
    return Intl.message(
      'Este campo no puede estar vacío',
      name: 'inputErrorRequiredEmpty',
      desc: '',
      args: [],
    );
  }

  /// `No hay registros para este tiempo`
  String get noRecord {
    return Intl.message(
      'No hay registros para este tiempo',
      name: 'noRecord',
      desc: '',
      args: [],
    );
  }

  /// `Token`
  String get token {
    return Intl.message(
      'Token',
      name: 'token',
      desc: '',
      args: [],
    );
  }

  /// `Agregar Cuentas Manualmente`
  String get manuallyAddAccount {
    return Intl.message(
      'Agregar Cuentas Manualmente',
      name: 'manuallyAddAccount',
      desc: '',
      args: [],
    );
  }

  /// `Nombre`
  String get name {
    return Intl.message(
      'Nombre',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Comerciante`
  String get merchant {
    return Intl.message(
      'Comerciante',
      name: 'merchant',
      desc: '',
      args: [],
    );
  }

  /// `Sitio web del Comerciante`
  String get merchantWebsite {
    return Intl.message(
      'Sitio web del Comerciante',
      name: 'merchantWebsite',
      desc: '',
      args: [],
    );
  }

  /// `Cantidad`
  String get amount {
    return Intl.message(
      'Cantidad',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Tipo`
  String get type {
    return Intl.message(
      'Tipo',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Subcategoría`
  String get subcategory {
    return Intl.message(
      'Subcategoría',
      name: 'subcategory',
      desc: '',
      args: [],
    );
  }

  /// `No hay datos`
  String get noData {
    return Intl.message(
      'No hay datos',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar`
  String get close {
    return Intl.message(
      'Cerrar',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Programar una llamada`
  String get scheduleCall {
    return Intl.message(
      'Programar una llamada',
      name: 'scheduleCall',
      desc: '',
      args: [],
    );
  }

  /// `Habla con alguien`
  String get talkSomeone {
    return Intl.message(
      'Habla con alguien',
      name: 'talkSomeone',
      desc: '',
      args: [],
    );
  }

  /// `Cumpleaños`
  String get birthday {
    return Intl.message(
      'Cumpleaños',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `Género`
  String get gender {
    return Intl.message(
      'Género',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Actualizar`
  String get update {
    return Intl.message(
      'Actualizar',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `¡Perfil actualizado correctamente!`
  String get updateProfileSuccess {
    return Intl.message(
      '¡Perfil actualizado correctamente!',
      name: 'updateProfileSuccess',
      desc: '',
      args: [],
    );
  }

  /// `¡OTP inválido!`
  String get otpInvalid {
    return Intl.message(
      '¡OTP inválido!',
      name: 'otpInvalid',
      desc: '',
      args: [],
    );
  }

  /// `¡Enviado!`
  String get sent {
    return Intl.message(
      '¡Enviado!',
      name: 'sent',
      desc: '',
      args: [],
    );
  }

  /// `Invita a tu amigo`
  String get inviteYourFriend {
    return Intl.message(
      'Invita a tu amigo',
      name: 'inviteYourFriend',
      desc: '',
      args: [],
    );
  }

  /// `Refiere a tu amigo para ganar bonificaciones`
  String get referYouFriend {
    return Intl.message(
      'Refiere a tu amigo para ganar bonificaciones',
      name: 'referYouFriend',
      desc: '',
      args: [],
    );
  }

  /// `Copiar`
  String get copy {
    return Intl.message(
      'Copiar',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `¡Cuenta agregada exitosamente!`
  String get addAccountSuccess {
    return Intl.message(
      '¡Cuenta agregada exitosamente!',
      name: 'addAccountSuccess',
      desc: '',
      args: [],
    );
  }

  /// `¡Transacción agregada exitosamente!`
  String get addTransactionSuccess {
    return Intl.message(
      '¡Transacción agregada exitosamente!',
      name: 'addTransactionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `¡Transacción eliminada exitosamente!`
  String get deleteTransactionSuccess {
    return Intl.message(
      '¡Transacción eliminada exitosamente!',
      name: 'deleteTransactionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `¡Descripción actualizada exitosamente!`
  String get updateDescriptionSucess {
    return Intl.message(
      '¡Descripción actualizada exitosamente!',
      name: 'updateDescriptionSucess',
      desc: '',
      args: [],
    );
  }

  /// `¡Subcategoría agregada exitosamente!`
  String get addSubcategorySuccess {
    return Intl.message(
      '¡Subcategoría agregada exitosamente!',
      name: 'addSubcategorySuccess',
      desc: '',
      args: [],
    );
  }

  /// `¡Cuenta eliminada exitosamente!`
  String get deleteAccountSuccess {
    return Intl.message(
      '¡Cuenta eliminada exitosamente!',
      name: 'deleteAccountSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Notificación`
  String get notification {
    return Intl.message(
      'Notificación',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `¿Quieres eliminar la cuenta?`
  String get doYouWantDeleteAccount {
    return Intl.message(
      '¿Quieres eliminar la cuenta?',
      name: 'doYouWantDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `¿Quieres eliminar la transacción?`
  String get doYouWantDeleteTransaction {
    return Intl.message(
      '¿Quieres eliminar la transacción?',
      name: 'doYouWantDeleteTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Mostrar menos`
  String get showLess {
    return Intl.message(
      'Mostrar menos',
      name: 'showLess',
      desc: '',
      args: [],
    );
  }

  /// `Mostrar más`
  String get showMore {
    return Intl.message(
      'Mostrar más',
      name: 'showMore',
      desc: '',
      args: [],
    );
  }

  /// `Hoy`
  String get today {
    return Intl.message(
      'Hoy',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar`
  String get delete {
    return Intl.message(
      'Eliminar',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Hola de nuevo`
  String get helloAgain {
    return Intl.message(
      'Hola de nuevo',
      name: 'helloAgain',
      desc: '',
      args: [],
    );
  }

  /// `Cuéntame qué tienes en mente, o elige una sugerencia.`
  String get tellMe {
    return Intl.message(
      'Cuéntame qué tienes en mente, o elige una sugerencia.',
      name: 'tellMe',
      desc: '',
      args: [],
    );
  }

  /// `Kebo Wise`
  String get keboWise {
    return Intl.message(
      'Kebo Wise',
      name: 'keboWise',
      desc: '',
      args: [],
    );
  }

  /// `Selecciona tu producto`
  String get selectYourProduct {
    return Intl.message(
      'Selecciona tu producto',
      name: 'selectYourProduct',
      desc: '',
      args: [],
    );
  }

  /// `¿Qué productos quieres sincronizar?`
  String get whichProductDoYouWant {
    return Intl.message(
      '¿Qué productos quieres sincronizar?',
      name: 'whichProductDoYouWant',
      desc: '',
      args: [],
    );
  }

  /// `Ir al principio`
  String get goToBegin {
    return Intl.message(
      'Ir al principio',
      name: 'goToBegin',
      desc: '',
      args: [],
    );
  }

  /// `Gastos a lo largo del tiempo`
  String get expensesOverTime {
    return Intl.message(
      'Gastos a lo largo del tiempo',
      name: 'expensesOverTime',
      desc: '',
      args: [],
    );
  }

  /// `Nombre de la Categoría`
  String get categoryName {
    return Intl.message(
      'Nombre de la Categoría',
      name: 'categoryName',
      desc: '',
      args: [],
    );
  }

  /// `Gastos por categoría`
  String get expensesByCategory {
    return Intl.message(
      'Gastos por categoría',
      name: 'expensesByCategory',
      desc: '',
      args: [],
    );
  }

  /// `Actual`
  String get actual {
    return Intl.message(
      'Actual',
      name: 'actual',
      desc: '',
      args: [],
    );
  }

  /// `Fecha`
  String get date {
    return Intl.message(
      'Fecha',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Ingresos por mes`
  String get incomePerMonth {
    return Intl.message(
      'Ingresos por mes',
      name: 'incomePerMonth',
      desc: '',
      args: [],
    );
  }

  /// `Mes`
  String get month {
    return Intl.message(
      'Mes',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Detalle de cuenta`
  String get detailAccount {
    return Intl.message(
      'Detalle de cuenta',
      name: 'detailAccount',
      desc: '',
      args: [],
    );
  }

  /// `Buscar categorías`
  String get searchCategories {
    return Intl.message(
      'Buscar categorías',
      name: 'searchCategories',
      desc: '',
      args: [],
    );
  }

  /// `Reporte 📈`
  String get reportText {
    return Intl.message(
      'Reporte 📈',
      name: 'reportText',
      desc: '',
      args: [],
    );
  }

  /// `¡Error!`
  String get commonError {
    return Intl.message(
      '¡Error!',
      name: 'commonError',
      desc: '',
      args: [],
    );
  }

  /// `Comming`
  String get commingSoon {
    return Intl.message(
      'Comming',
      name: 'commingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Outcome`
  String get outcome {
    return Intl.message(
      'Outcome',
      name: 'outcome',
      desc: '',
      args: [],
    );
  }

  /// `←  Fecha  →`
  String get dateChart {
    return Intl.message(
      '←  Fecha  →',
      name: 'dateChart',
      desc: '',
      args: [],
    );
  }

  /// `Vincular`
  String get link {
    return Intl.message(
      'Vincular',
      name: 'link',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
