// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  static String m0(score) =>
      "Basado en tus datos financieros, tu KeboScore es ${score}, lo cual es considerado bueno.";

  static String m1(x, y) => "Entre ${x} y ${y} años";

  static String m2(user) => " ¡Hola, ${user}!";

  static String m3(x) => "Últimos ${x} días";

  static String m4(amount) =>
      "Puedes enviar un máximo de ${amount} imágenes a la vez";

  static String m5(page) => "PASO ${page}";

  static String m6(link) =>
      "Este proceso solo tomará unos segundos. Utilizamos Belvo para sincronizar tus transacciones con Kebo. Las actualizaciones se realizan dos veces al día, pero pueden ser en tiempo real si tienes una suscripción Pro. Obtén más información sobre cómo funciona la Banca Abierta ${link}.";

  static String m7(x) => "ID de Usuario${x}";

  static String m8(phone) =>
      "Te enviaremos un mensaje de texto al número ${phone}";

  static String m9(minute) => "${minute} minuto(s)";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "abort": MessageLookupByLibrary.simpleMessage("Abortar"),
        "account": MessageLookupByLibrary.simpleMessage("Cuenta"),
        "activate": MessageLookupByLibrary.simpleMessage("Activar"),
        "actual": MessageLookupByLibrary.simpleMessage("Actual"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Agregar cuenta"),
        "addAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "¡Cuenta agregada exitosamente!"),
        "addNewCategory":
            MessageLookupByLibrary.simpleMessage("Agregar una nueva categoría"),
        "addSubcategorySuccess": MessageLookupByLibrary.simpleMessage(
            "¡Subcategoría agregada exitosamente!"),
        "addTransactionSuccess": MessageLookupByLibrary.simpleMessage(
            "¡Transacción agregada exitosamente!"),
        "allEntriesWillBeLost": MessageLookupByLibrary.simpleMessage(
            "Se perderán todas las entradas."),
        "amount": MessageLookupByLibrary.simpleMessage("Cantidad"),
        "amountOfTransaction":
            MessageLookupByLibrary.simpleMessage("Cantidad de Transacción"),
        "analytics": MessageLookupByLibrary.simpleMessage("Análisis"),
        "appName": MessageLookupByLibrary.simpleMessage("Kebo"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("¿Estás seguro?"),
        "askKebo":
            MessageLookupByLibrary.simpleMessage("Pregúntale a Kebo Wise..."),
        "balance": MessageLookupByLibrary.simpleMessage("Balance"),
        "balanceGeneral":
            MessageLookupByLibrary.simpleMessage("Balance General"),
        "banks": MessageLookupByLibrary.simpleMessage("Bancos"),
        "baseYourFinancial": m0,
        "belvo": MessageLookupByLibrary.simpleMessage("Belvo"),
        "betweenXtoY": m1,
        "birthday": MessageLookupByLibrary.simpleMessage("Cumpleaños"),
        "byContinuing": MessageLookupByLibrary.simpleMessage(
            "Al continuar, aceptas la Política de Privacidad de "),
        "camera": MessageLookupByLibrary.simpleMessage("Cámara"),
        "category": MessageLookupByLibrary.simpleMessage("Categoría"),
        "categoryName":
            MessageLookupByLibrary.simpleMessage("Nombre de la Categoría"),
        "chooseDate": MessageLookupByLibrary.simpleMessage("Seleccionar Fecha"),
        "close": MessageLookupByLibrary.simpleMessage("Cerrar"),
        "commingSoon": MessageLookupByLibrary.simpleMessage("Comming"),
        "commonError": MessageLookupByLibrary.simpleMessage("¡Error!"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirmar contraseña"),
        "connectYourAccount":
            MessageLookupByLibrary.simpleMessage("Conecta una institución"),
        "continueText": MessageLookupByLibrary.simpleMessage("Continuar"),
        "continueWithApple":
            MessageLookupByLibrary.simpleMessage("Continuar con Apple"),
        "continueWithGoogle":
            MessageLookupByLibrary.simpleMessage("Continuar con Google"),
        "copy": MessageLookupByLibrary.simpleMessage("Copiar"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Crear Cuenta"),
        "createCategory":
            MessageLookupByLibrary.simpleMessage("Crear categoría"),
        "createYourPassword":
            MessageLookupByLibrary.simpleMessage("Crea tu\ncontraseña"),
        "cropImage": MessageLookupByLibrary.simpleMessage("Recortar Imagen"),
        "currentDay": MessageLookupByLibrary.simpleMessage("Día Actual"),
        "daily": MessageLookupByLibrary.simpleMessage("Diario"),
        "date": MessageLookupByLibrary.simpleMessage("Fecha"),
        "dateChart": MessageLookupByLibrary.simpleMessage("←  Fecha  →"),
        "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "deleteAccountSuccess": MessageLookupByLibrary.simpleMessage(
            "¡Cuenta eliminada exitosamente!"),
        "deleteTransactionSuccess": MessageLookupByLibrary.simpleMessage(
            "¡Transacción eliminada exitosamente!"),
        "description": MessageLookupByLibrary.simpleMessage("Descripción"),
        "detailAccount":
            MessageLookupByLibrary.simpleMessage("Detalle de cuenta"),
        "doYouWantDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "¿Quieres eliminar la cuenta?"),
        "doYouWantDeleteTransaction": MessageLookupByLibrary.simpleMessage(
            "¿Quieres eliminar la transacción?"),
        "doYouWantEnableNotification": MessageLookupByLibrary.simpleMessage(
            "¿Quieres activar last onotificaciones?"),
        "editProfie": MessageLookupByLibrary.simpleMessage("Editar perfil"),
        "email": MessageLookupByLibrary.simpleMessage("Correo electrónico"),
        "en": MessageLookupByLibrary.simpleMessage("Inglés"),
        "enableBiometricAuthentication": MessageLookupByLibrary.simpleMessage(
            "Habilitar\nAutenticación\nBiométrica"),
        "enterEmailAndPassword": MessageLookupByLibrary.simpleMessage(
            "La mejor aplicación para mejorar tu salud financiera"),
        "enterSecurePassword": MessageLookupByLibrary.simpleMessage(
            "Ingresa una contraseña segura \npara tu cuenta."),
        "enterYourCredentials":
            MessageLookupByLibrary.simpleMessage("Ingresa tus credenciales"),
        "es": MessageLookupByLibrary.simpleMessage("Español"),
        "expenseAndBudgetAlerts": MessageLookupByLibrary.simpleMessage(
            "Alertas de Gastos y Presupuestos"),
        "expenseAndIncomeAnalysis": MessageLookupByLibrary.simpleMessage(
            "Análisis de Gastos e Ingresos"),
        "expenses": MessageLookupByLibrary.simpleMessage("Gastos"),
        "expensesByCategory":
            MessageLookupByLibrary.simpleMessage("Gastos por categoría"),
        "expensesOverTime": MessageLookupByLibrary.simpleMessage(
            "Gastos a lo largo del tiempo"),
        "female": MessageLookupByLibrary.simpleMessage("Femenino"),
        "finApps":
            MessageLookupByLibrary.simpleMessage("Aplicaciones Financieras"),
        "firstName": MessageLookupByLibrary.simpleMessage("Nombre"),
        "forgotYourPassword":
            MessageLookupByLibrary.simpleMessage("¿Olvidaste tu contraseña?"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galería"),
        "gender": MessageLookupByLibrary.simpleMessage("Género"),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "goToBegin": MessageLookupByLibrary.simpleMessage("Ir al principio"),
        "goals": MessageLookupByLibrary.simpleMessage("Metas"),
        "hello": MessageLookupByLibrary.simpleMessage("¡Hola 👋🏼!"),
        "helloAgain": MessageLookupByLibrary.simpleMessage("Hola de nuevo"),
        "helloX": m2,
        "home": MessageLookupByLibrary.simpleMessage("Inicio"),
        "howDoYouIdentify":
            MessageLookupByLibrary.simpleMessage("¿Cómo te identificas?"),
        "howToImprove":
            MessageLookupByLibrary.simpleMessage("¿Cómo mejorar mi KeboScore?"),
        "iPreferNotToChoose":
            MessageLookupByLibrary.simpleMessage("Prefiero no elegir"),
        "ifYouEnableThisOption": MessageLookupByLibrary.simpleMessage(
            "Si habilitas esta opción, \nno necesitarás ingresar la contraseña\npara iniciar sesión"),
        "income": MessageLookupByLibrary.simpleMessage("Ingresos"),
        "incomePerMonth":
            MessageLookupByLibrary.simpleMessage("Ingresos por mes"),
        "inputErrorDescriptionMustNotBeEmpty":
            MessageLookupByLibrary.simpleMessage(
                "La descripción no puede estar vacía"),
        "inputErrorEmailEmpty": MessageLookupByLibrary.simpleMessage(
            "El correo electrónico no puede estar vacío"),
        "inputErrorEmailInvalid": MessageLookupByLibrary.simpleMessage(
            "Por favor, introduce una dirección de correo electrónico válida"),
        "inputErrorNameEmpty": MessageLookupByLibrary.simpleMessage(
            "El nombre no puede estar vacío"),
        "inputErrorPassionEmpty": MessageLookupByLibrary.simpleMessage(
            "Por favor, proporciona una pasión tuya"),
        "inputErrorPasswordHasSpecialChar":
            MessageLookupByLibrary.simpleMessage(
                "La contraseña no debe contener caracteres especiales"),
        "inputErrorPasswordNoDigit": MessageLookupByLibrary.simpleMessage(
            "La contraseña debe contener al menos un dígito"),
        "inputErrorPasswordNoUppercase": MessageLookupByLibrary.simpleMessage(
            "La contraseña debe contener al menos una letra mayúscula"),
        "inputErrorPasswordSpecialChar": MessageLookupByLibrary.simpleMessage(
            "La contraseña debe contener al menos un carácter especial"),
        "inputErrorPasswordTooShort": MessageLookupByLibrary.simpleMessage(
            "La contraseña debe tener al menos 8 caracteres de longitud"),
        "inputErrorPasswordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
            "Las contraseñas no coinciden"),
        "inputErrorPhoneNumberEmpty": MessageLookupByLibrary.simpleMessage(
            "El número de teléfono no puede estar vacío"),
        "inputErrorPhoneNumberInvalid": MessageLookupByLibrary.simpleMessage(
            "Por favor, introduce un número de teléfono válido"),
        "inputErrorPhoneNumberInvalidAreaCode":
            MessageLookupByLibrary.simpleMessage(
                "Por favor, introduce un número de teléfono con código de área"),
        "inputErrorRequiredEmpty": MessageLookupByLibrary.simpleMessage(
            "Este campo no puede estar vacío"),
        "inputErrorTitleMustNotBeEmpty": MessageLookupByLibrary.simpleMessage(
            "El título no puede estar vacío"),
        "inputYourPhone": MessageLookupByLibrary.simpleMessage(
            "Ingresa tu número de\nteléfono."),
        "inviteFriends": MessageLookupByLibrary.simpleMessage("Invitar amigos"),
        "inviteYourFriend":
            MessageLookupByLibrary.simpleMessage("Invita a tu amigo"),
        "keboScore": MessageLookupByLibrary.simpleMessage("KeboScore"),
        "keboWise": MessageLookupByLibrary.simpleMessage("Kebo Wise"),
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "lastName": MessageLookupByLibrary.simpleMessage("Apellido"),
        "lastXDay": m3,
        "letStart": MessageLookupByLibrary.simpleMessage("¡Empecemos!"),
        "link": MessageLookupByLibrary.simpleMessage("Vincular"),
        "loading": MessageLookupByLibrary.simpleMessage("Cargando"),
        "logOut": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "login": MessageLookupByLibrary.simpleMessage("Explora KeboApp"),
        "logout": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "male": MessageLookupByLibrary.simpleMessage("Masculino"),
        "manuallyAddAccount":
            MessageLookupByLibrary.simpleMessage("Agregar Cuentas Manualmente"),
        "manuallyAddTransactions": MessageLookupByLibrary.simpleMessage(
            "Agregar Transacciones Manualmente"),
        "maxImageLimit": m4,
        "merchant": MessageLookupByLibrary.simpleMessage("Comerciante"),
        "merchantWebsite":
            MessageLookupByLibrary.simpleMessage("Sitio web del Comerciante"),
        "metrics": MessageLookupByLibrary.simpleMessage("Métricas"),
        "month": MessageLookupByLibrary.simpleMessage("Mes"),
        "monthly": MessageLookupByLibrary.simpleMessage("Mensual"),
        "name": MessageLookupByLibrary.simpleMessage("Nombre"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noAbort": MessageLookupByLibrary.simpleMessage("No, abortar"),
        "noContinue": MessageLookupByLibrary.simpleMessage("No, continuar"),
        "noData": MessageLookupByLibrary.simpleMessage("No hay datos"),
        "noLogout": MessageLookupByLibrary.simpleMessage("No, cerrar sesión"),
        "noRecord": MessageLookupByLibrary.simpleMessage(
            "No hay registros para este tiempo"),
        "notification": MessageLookupByLibrary.simpleMessage("Notificación"),
        "notificationSetting": MessageLookupByLibrary.simpleMessage(
            "Configuración de notificaciones"),
        "ok": MessageLookupByLibrary.simpleMessage("Aceptar"),
        "orRegisterWith":
            MessageLookupByLibrary.simpleMessage("O regístrate con"),
        "otpInvalid": MessageLookupByLibrary.simpleMessage("¡OTP inválido!"),
        "outcome": MessageLookupByLibrary.simpleMessage("Outcome"),
        "password": MessageLookupByLibrary.simpleMessage("Contraseña"),
        "personalizedRecommendations": MessageLookupByLibrary.simpleMessage(
            "Recomendaciones Personalizadas"),
        "phone": MessageLookupByLibrary.simpleMessage("Número de Teléfono"),
        "phoneOrEmail": MessageLookupByLibrary.simpleMessage(
            "Teléfono o Correo electrónico"),
        "pleaseEnterValidEmail": MessageLookupByLibrary.simpleMessage(
            "Por favor, introduce un correo electrónico válido para continuar"),
        "pleaseEnterValidNumber": MessageLookupByLibrary.simpleMessage(
            "Por favor, introduce un número válido \npara continuar."),
        "previousDay": MessageLookupByLibrary.simpleMessage("Día Anterior"),
        "profile": MessageLookupByLibrary.simpleMessage("Perfil"),
        "referYouFriend": MessageLookupByLibrary.simpleMessage(
            "Refiere a tu amigo para ganar bonificaciones"),
        "report": MessageLookupByLibrary.simpleMessage("Reporte"),
        "reportText": MessageLookupByLibrary.simpleMessage("Reporte 📈"),
        "reportes": MessageLookupByLibrary.simpleMessage("Reportes"),
        "save": MessageLookupByLibrary.simpleMessage("Guardar"),
        "savings": MessageLookupByLibrary.simpleMessage("Ahorros"),
        "scheduleCall":
            MessageLookupByLibrary.simpleMessage("Programar una llamada"),
        "searchCategories":
            MessageLookupByLibrary.simpleMessage("Buscar categorías"),
        "searchForYourAccount":
            MessageLookupByLibrary.simpleMessage("Buscar tu cuenta..."),
        "seeMore": MessageLookupByLibrary.simpleMessage("Ver más"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Seleccionar Fecha"),
        "selectYourAccount":
            MessageLookupByLibrary.simpleMessage("Selecciona tu cuenta"),
        "selectYourProduct":
            MessageLookupByLibrary.simpleMessage("Selecciona tu producto"),
        "sendAgain": MessageLookupByLibrary.simpleMessage("Enviar de nuevo"),
        "sendNewCode":
            MessageLookupByLibrary.simpleMessage("Enviar un nuevo código"),
        "sent": MessageLookupByLibrary.simpleMessage("¡Enviado!"),
        "showLess": MessageLookupByLibrary.simpleMessage("Mostrar menos"),
        "showMore": MessageLookupByLibrary.simpleMessage("Mostrar más"),
        "skip": MessageLookupByLibrary.simpleMessage("Omitir"),
        "start": MessageLookupByLibrary.simpleMessage("Comenzar"),
        "step": m5,
        "subcategory": MessageLookupByLibrary.simpleMessage("Subcategoría"),
        "support": MessageLookupByLibrary.simpleMessage("Soporte"),
        "sureDeleteAccount": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que quieres eliminar tu cuenta?"),
        "sureDeleteAccountSubtitle": MessageLookupByLibrary.simpleMessage(
            "¡Tus datos se eliminarán permanentemente y no se podrán recuperar!"),
        "synchronize": MessageLookupByLibrary.simpleMessage("Sincronizar"),
        "synchronized":
            MessageLookupByLibrary.simpleMessage("Sincronizado hace 3 minutos"),
        "takeControlOfYourFinances": MessageLookupByLibrary.simpleMessage(
            "Toma el control de tus finanzas"),
        "takeControllOfYourFinances": MessageLookupByLibrary.simpleMessage(
            "¡Toma el Control de Tus\nFinanzas!"),
        "talkSomeone":
            MessageLookupByLibrary.simpleMessage("Habla con alguien"),
        "taxes": MessageLookupByLibrary.simpleMessage("Impuestos"),
        "tellMe": MessageLookupByLibrary.simpleMessage(
            "Cuéntame qué tienes en mente, o elige una sugerencia."),
        "termAndCondition":
            MessageLookupByLibrary.simpleMessage("Términos y Condiciones"),
        "thankYouForTakingTheTime": MessageLookupByLibrary.simpleMessage(
            "Gracias por tomarte el tiempo para crear una cuenta con nosotros. Ahora, esta es la parte divertida, vamos a explorar la aplicación."),
        "theFirstAppImproveYourFinancial": MessageLookupByLibrary.simpleMessage(
            "La mejor aplicación para mejorar tu salud financiera"),
        "thisFeatureIsUnderDevelopment": MessageLookupByLibrary.simpleMessage(
            "Esta función está en desarrollo"),
        "thisProcessWillTakeAFew": m6,
        "today": MessageLookupByLibrary.simpleMessage("Hoy"),
        "token": MessageLookupByLibrary.simpleMessage("Token"),
        "transactions": MessageLookupByLibrary.simpleMessage("Transacciones"),
        "type": MessageLookupByLibrary.simpleMessage("Tipo"),
        "typeYourEmail": MessageLookupByLibrary.simpleMessage(
            "Escribe tu correo electrónico"),
        "under18": MessageLookupByLibrary.simpleMessage("Menores de 18 años"),
        "underDevelopment":
            MessageLookupByLibrary.simpleMessage("En desarrollo"),
        "update": MessageLookupByLibrary.simpleMessage("Actualizar"),
        "updateDescriptionSucess": MessageLookupByLibrary.simpleMessage(
            "¡Descripción actualizada exitosamente!"),
        "updateProfileSuccess": MessageLookupByLibrary.simpleMessage(
            "¡Perfil actualizado correctamente!"),
        "upper65": MessageLookupByLibrary.simpleMessage("65 años o más"),
        "user": MessageLookupByLibrary.simpleMessage("Usuario"),
        "userId": m7,
        "valueOfTransactions":
            MessageLookupByLibrary.simpleMessage("Valor de Transacciones"),
        "verifyYourPhone":
            MessageLookupByLibrary.simpleMessage("Verifica tu número"),
        "view": MessageLookupByLibrary.simpleMessage("Ver"),
        "viewDetails": MessageLookupByLibrary.simpleMessage("Ver Detalles"),
        "weAreSynchronizing": MessageLookupByLibrary.simpleMessage(
            "Estamos sincronizando tus transacciones"),
        "weWillTextYouNumber": m8,
        "weWouldLikeToKnowGender": MessageLookupByLibrary.simpleMessage(
            "Nos gustaría saber tu género para proporcionarte una experiencia más personalizada."),
        "weekly": MessageLookupByLibrary.simpleMessage("Semanal"),
        "welcomeTo": MessageLookupByLibrary.simpleMessage("Bienvenido a"),
        "whatIsYourDateOfBirth": MessageLookupByLibrary.simpleMessage(
            "¿Cuál es tu fecha de nacimiento?"),
        "whichProductDoYouWant": MessageLookupByLibrary.simpleMessage(
            "¿Qué productos quieres sincronizar?"),
        "xMinute": m9,
        "yes": MessageLookupByLibrary.simpleMessage("Sí"),
        "yesAbort": MessageLookupByLibrary.simpleMessage("Sí, abortar"),
        "yesDeleteAcc":
            MessageLookupByLibrary.simpleMessage("Sí, eliminar cuenta"),
        "yesLogout": MessageLookupByLibrary.simpleMessage("Sí, cerrar sesión"),
        "youWantLogout":
            MessageLookupByLibrary.simpleMessage("¿Quieres cerrar sesión?"),
        "yourRecentActivity": MessageLookupByLibrary.simpleMessage(
            "Tu actividad reciente está abajo.")
      };
}
