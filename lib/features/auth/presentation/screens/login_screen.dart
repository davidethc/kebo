import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kebo_app/core/constants/app_asset_images.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/constants/theme/app_fonts.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_widget.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/loading/loading_area.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:kebo_app/core/data/errors/app_input_errors.dart';

// Definición de la clase LoginScreen, que es un StatefulWidget.
// Esto significa que tiene un estado mutable.
class LoginScreen extends StatefulWidget {
  // Constructor de la clase LoginScreen, usa super.key para pasar la clave al constructor de la superclase.
  const LoginScreen({super.key});

  @override
  // Crea el estado asociado con LoginScreen.
  State<LoginScreen> createState() => _LoginScreenState();
}

// Definición de la clase _LoginScreenState que maneja el estado mutable de LoginScreen.
class _LoginScreenState extends State<LoginScreen> with FlashBarMixin {
  // Variable para almacenar la instancia del cubit de LoginCubit.
  late LoginCubit cubit;

  @override
  void initState() {
    super.initState();
    // Obtiene la instancia del LoginCubit del contexto y la asigna a la variable cubit.
    cubit = context.read<LoginCubit>();
    // Llama al método checkBiometrics del cubit para verificar si la biometría está disponible en el dispositivo.
    cubit.checkBiometrics();
    // Si estamos en modo de depuración (kDebugMode es verdadero), configura valores predeterminados para el número de teléfono y la contraseña.
    if (kDebugMode) {
      cubit.onChangedUsername(
          '+573112047855'); // Configura un número de teléfono de prueba.
      cubit.onChangedPassword(
          'Kebo1997@'); // Configura una contraseña de prueba.
    }
  }

  // Método que maneja los cambios en el estado del LoginCubit.
  void _blocListener(BuildContext context, LoginState state) {
    // Si hay un error de autenticación, muestra un mensaje de error.
    if (state.authFailure != null) {
      showFailureMessage(
        context,
        failure: state.authFailure!,
        onDismissed: cubit
            .onFlashBarDismissed, // Callback para manejar el desvanecimiento del mensaje de error.
      );
    }

    // Si el estado indica que se debe navegar a la pantalla de inicio (splash), realiza la navegación.
    if (state.navigateToSplash) {
      cubit
          .onBeforeNavigate(); // Llama al método onBeforeNavigate del cubit antes de la navegación.
      Navigator.pushNamedAndRemoveUntil(
          context,
          AppScreens.splash,
          (route) =>
              false); // Navega a la pantalla de inicio y elimina todas las rutas anteriores.
    }
  }

  @override
  Widget build(BuildContext context) {
    // Usa BlocListener para escuchar cambios en el estado del LoginCubit
    return BlocListener<LoginCubit, LoginState>(
      listener: _blocListener, // Función que maneja los cambios en el estado
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, LoginState state) => LoadingArea(
          isLoading: state
              .isProcessing, // Muestra un indicador de carga si está procesando
          child: Scaffold(
            backgroundColor: Color.fromRGBO(223, 210, 255,
                1), // Opacidad al m%C3%A1ximo (1.0)/ Color de fondo morado claro
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 85),
                  // Espacio arriba
                  // Si el teclado no está visible
                  if (!context.hasKeyboardPopUp)
                    Container(
                      height: context.h * .15, // 15% de la altura del contexto
                      width: context.w, // Ancho completo del contexto
                      decoration: BoxDecoration(
                          color:
                              Color.fromRGBO(223, 210, 255, 1), // Color verde
                          borderRadius:
                              BorderRadius.circular(12)), // Bordes redondeados
                      child: Center(
                        child: Image.asset(
                          AppAssetImages.logo, // Ruta de la imagen del logo
                          height:
                              context.h * .1, // 10% de la altura del contexto
                        ),
                      ),
                    ),
                  const SizedBox(height: 10), // Espacio debajo del logo
                  Flexible(
                    flex: 7, // Proporción del espacio disponible
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(223, 210, 255,
                              1), // Fondo blanco para el contenedor del formulario
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(
                                    223, 210, 255, 1), // Color de la sombra
                                spreadRadius:
                                    5, // Radio de expansión de la sombra
                                blurRadius:
                                    7, // Radio de difuminado de la sombra
                                offset: const Offset(
                                    0, 3)), // Desplazamiento de la sombra
                          ],
                          borderRadius:
                              BorderRadius.circular(12)), // Bordes redondeados
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16), // Margen horizontal
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16), // Relleno horizontal
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize:
                              MainAxisSize.min, // Tamaño mínimo de la columna
                          children: [
                            const SizedBox(
                                height: 0), // Espacio arriba del título
                            Text(
                              S.current.login, // Texto del encabezado
                              style:
                                  context.theme.textTheme.bodyLarge?.copyWith(
                                fontSize: 30, height: 0, // Tamaño del texto
                                color: Color.fromARGB(255, 102, 12,
                                    187), // Color morado (reemplaza con tu color deseado)
                                fontFamily:
                                    'ReadexPro', // Nombre de la fuente que quieres usar (asegúrate de tenerla en tu proyecto)
                                fontWeight: FontWeight
                                    .w800, // Peso de la fuente (puede ser FontWeight.normal, FontWeight.w600, FontWeight.bold, etc.)
                              ),
                            ),
                            // Espacio debajo del título

                            const SizedBox(
                                height: 10), // Espacio debajo DE kkeboapp
                            Align(
                              alignment:
                                  Alignment.center, // Alineación al centro

                              child: Text(
                                textAlign: TextAlign.center,
                                S.current
                                    .enterEmailAndPassword, // Texto que deseas mostrar
                                style:
                                    context.theme.textTheme.bodyLarge?.copyWith(
                                  fontSize: 18, // Tamaño del texto
                                  color: const Color.fromARGB(
                                      255, 123, 19, 213), // Color del texto
                                ),
                              ),
                            ),

                            const SizedBox(
                                height: 17), // Espacio debajo del texto
                            //_buildForm(), // Construcción del formulario de inicio de sesión
                            //  const SizedBox(
                            //     height: 20), // Espacio debajo del formulario
                            // _buildBiometric(), // Construcción de la sección de autenticación biométrica
                            const SizedBox(
                                height:
                                    10), // Espacio debajo de la autenticación biométrica

                            //   BlocBuilder<LoginCubit, LoginState>(
                            //     builder: (context, LoginState state) => SizedBox(
                            //     width: context.w *
                            //         .7, // 70% del ancho del contexto
                            //     child: Row(
                            //       children: [
                            //         Expanded(
                            //           child: ClipRRect(
                            //             borderRadius: BorderRadius.circular(
                            //                 40), // Bordes redondeados del botón
                            //             child: AppStateAwareButton.primary(
                            //               onTap: () => cubit
                            //                   .onLogin(), // Acción al hacer clic en el botón de inicio de sesión
                            //               label: S
                            //                   .current.login, // Texto del botón
                            //               loading: state
                            //                   .isAnythingLoading, // Estado de carga del botón
                            //               enabled: state
                            //                   .isNothingLoading, // Habilitación del botón
                            //             ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            const SizedBox(
                                height:
                                    20), // Espacio debajo del botón de inicio de sesión
                            Column(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Alineación al centro
                              children: [
                                if (Platform.isIOS) ...[
                                  ElevatedButton(
                                    onPressed: () => cubit.onLoginSocial(LoginType
                                        .apple), // Acción al hacer clic en el botón de inicio con Apple
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(
                                          250, 52), // Tamaño mínimo del botón
                                      elevation: 0, // Elevación del botón
                                      backgroundColor: Colors
                                          .white, // Color de fondo del botón
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40), // Bordes redondeados del botón
                                        side: const BorderSide(
                                            width: 2,
                                            color: AppColors
                                                .alternate), // Borde del botón
                                      ),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center, // Centra el contenido del botón
                                      children: [
                                        Icon(FontAwesomeIcons.apple,
                                            color: AppColors
                                                .black), // Icono del botón "Continuar con Email"
                                        SizedBox(
                                            width:
                                                8), // Espacio entre el icono y el texto
                                        Text(
                                          'Continuar con apple', // Texto del botón
                                          textAlign: TextAlign
                                              .center, // Centra el texto dentro del botón
                                          style: TextStyle(
                                            color: AppColors
                                                .black, // Color del texto del botón
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                    height: 20,
                                  ), // Espacio entre botones
                                  ElevatedButton(
                                    onPressed: () => cubit.onLoginSocial(LoginType
                                        .google), // Acción al hacer clic en el botón de inicio con Google
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(
                                          250, 52), // Tamaño mínimo del botón
                                      elevation: 0, // Elevación del botón
                                      backgroundColor: Colors
                                          .white, // Color de fondo del botón
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40), // Bordes redondeados del botón
                                        side: const BorderSide(
                                            width: 2,
                                            color: AppColors
                                                .alternate), // Borde del botón
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center, // Centra el contenido del botón
                                      children: const [
                                        Icon(FontAwesomeIcons.google,
                                            color: AppColors
                                                .black), // Icono del botón "Continuar con Email"
                                        SizedBox(
                                            width:
                                                8), // Espacio entre el icono y el texto
                                        Text(
                                          'Continuar con google', // Texto del botón
                                          textAlign: TextAlign
                                              .center, // Centra el texto dentro del botón
                                          style: TextStyle(
                                            color: AppColors
                                                .black, // Color del texto del botón
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), // Icono del botón de Google
                                  const SizedBox(
                                    width: 10,
                                    height: 20,
                                  ), // Espacio entre botones

                                  ElevatedButton(
                                    onPressed: () {
                                      // Acción al hacer clic en el botón "Continuar con Email"
                                    },
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(
                                          250, 52), // Tamaño mínimo del botón
                                      elevation: 0, // Elevación del botón
                                      backgroundColor: Colors
                                          .white, // Color de fondo del botón
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40), // Bordes redondeados del botón
                                        side: const BorderSide(
                                          width: 2, // Ancho del borde
                                          color: AppColors
                                              .alternate, // Color del borde del botón
                                        ),
                                      ),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center, // Centra el contenido del botón
                                      children: [
                                        Icon(Icons.email,
                                            color: AppColors
                                                .black), // Icono del botón "Continuar con Email"
                                        SizedBox(
                                            width:
                                                8), // Espacio entre el icono y el texto
                                        Text(
                                          'Continuar con Email', // Texto del botón
                                          textAlign: TextAlign
                                              .center, // Centra el texto dentro del botón
                                          style: TextStyle(
                                            color: AppColors
                                                .black, // Color del texto del botón
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ],
                            ),
                            const SizedBox(
                                height:
                                    20), // Espacio debajo de los botones sociales
                            //Text(
                            //  S.current
                            //      .orRegisterWith, // Texto que indica la opción de registrarse
                            //  style: context.theme.textTheme.bodyMedium
                            //      ?.copyWith(
                            //          fontSize: 16, // Tamaño del texto
                            //          color: AppColors
                            //              .secondaryText), // Color del texto
                            // ),
                            const SizedBox(
                                height:
                                    20), // Espacio debajo del texto de registro
                            //SizedBox(
                            //  width:
                            //      context.w * .7, // 70% del ancho del contexto
                            //  child: ClipRRect(
                            //    borderRadius: BorderRadius.circular(
                            //        40), // Bordes redondeados del botón
                            //    child: AppStateAwareButton.primary(
                            //      onTap: () => context.navigate(AppScreens
                            //          .register), // Acción al hacer clic en el botón de registro
                            //      label: S
                            //          .current.createAccount, // Texto del botón
                            //      loading:
                            //          false, // El botón no está en estado de carga
                            //      enabled: true, // El botón está habilitado
                            //    ),
                            //  ),
                            //),
                            //const SizedBox(
                            //    height:
                            //        20), // Espacio debajo del botón de registro
                            //GestureDetector(
                            //  onTap: () => context.navigate(AppScreens
                            //      .forget), // Acción al hacer clic en el enlace de contraseña olvidada
                            //  child: Text(
                            //    S.current
                            //        .forgotYourPassword, // Texto del enlace de contraseña olvidada
                            //    style: context.theme.textTheme.titleMedium
                            //        ?.copyWith(
                            //            fontSize: 14, // Tamaño del texto
                            //            fontWeight:
                            //                FontWeight.w700), // Peso del texto
                            //  ),
                            //),
                            const SizedBox(
                                height:
                                    20), // Espacio debajo del enlace de contraseña olvidada
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height:
                          20), // Espacio en la parte inferior de la pantalla
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget que construye la sección de autenticación biométrica
  Widget _buildBiometric() {
    // Usa BlocBuilder para construir la interfaz basada en el estado del LoginCubit
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, LoginState state) => state.hasBiometrics
          // Verifica si el estado tiene biometría disponible
          ? Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Centra los elementos en el eje horizontal
              children: [
                const SizedBox(width: 10), // Espacio horizontal
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Centra los elementos en el eje horizontal
                  children: [
                    // Si no hay Face ID y la plataforma es Android
                    if (!state.hasFaceID && Platform.isAndroid)
                      GestureDetector(
                        onTap: () => cubit
                            .onLoginBiometric(), // Acción al tocar el icono biométrico
                        child: SvgPicture.asset(
                          AppAssetImages
                              .icFinger, // Ruta del icono de huella digital
                          height: 35, // Altura del icono
                          width: 35, // Ancho del icono
                        ),
                      )
                    // Si la plataforma es iOS
                    else if (Platform.isIOS)
                      GestureDetector(
                        onTap: () => cubit
                            .onLoginBiometric(), // Acción al tocar el icono biométrico
                        child: SvgPicture.asset(
                          AppAssetImages.icFaceID, // Ruta del icono de Face ID
                          height: 35, // Altura del icono
                          width: 35, // Ancho del icono
                        ),
                      ),
                  ],
                )
              ],
            )
          : const SizedBox(), // Si no hay biometría, devuelve un SizedBox vacío
    );
  }

// Widget que construye el formulario de inicio de sesión
  Widget _buildForm() {
    // Usa BlocBuilder para construir la interfaz basada en el estado del LoginCubit
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, LoginState state) => Column(
        crossAxisAlignment: CrossAxisAlignment
            .start, // Alinea los elementos al inicio del eje transversal
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 16), // Relleno horizontal
            height: 50, // Altura del contenedor
            width: context.w, // Ancho del contexto
            decoration: BoxDecoration(
                border: Border.all(
                    color: AppColors.alternate), // Borde del contenedor
                borderRadius: BorderRadius.circular(8)), // Bordes redondeados
            child: Row(
              children: [
                // Si el estado es para teléfono
                if (state.isPhone)
                  SizedBox(
                    height:
                        48, // Altura del campo de entrada del número de teléfono
                    width:
                        60, // Ancho del campo de entrada del número de teléfono
                    child: InternationalPhoneNumberInput(
                      initialValue: state
                          .phoneNumber, // Valor inicial del número de teléfono
                      onInputChanged: (PhoneNumber number) =>
                          cubit.onChangeCountryCode(
                              number), // Maneja el cambio de código de país
                      textStyle: context.theme.textTheme.bodyLarge
                          ?.copyWith(fontSize: 16), // Estilo del texto
                      selectorTextStyle: context.theme.textTheme.bodyLarge
                          ?.copyWith(fontSize: 16), // Estilo del selector
                      selectorConfig: const SelectorConfig(
                          showFlags: true, // Muestra las banderas
                          selectorType: PhoneInputSelectorType
                              .BOTTOM_SHEET, // Tipo de selector de entrada
                          useBottomSheetSafeArea:
                              true, // Usa el área segura del bottom sheet
                          leadingPadding: 0), // Relleno a la izquierda
                      ignoreBlank: false, // No ignora campos en blanco
                      inputBorder:
                          InputBorder.none, // Sin borde en el campo de entrada
                      formatInput: false, // No formatea la entrada
                    ),
                  ),
                Expanded(
                  child: AppInput(
                    ted: cubit
                        .usernameController, // Controlador del campo de entrada
                    inputDecoration: InputDecoration(
                      hintText: S.current.phoneOrEmail, // Texto de sugerencia
                      contentPadding: EdgeInsets.zero, // Sin relleno adicional
                      border:
                          InputBorder.none, // Sin borde en el campo de entrada
                      hintStyle: context.theme.textTheme.bodyLarge?.copyWith(
                          fontSize: 16,
                          color: AppColors
                              .black), // Estilo del texto de sugerencia
                      errorBorder: InputBorder.none, // Sin borde de error
                      enabledBorder:
                          InputBorder.none, // Sin borde cuando está habilitado
                      focusedBorder:
                          InputBorder.none, // Sin borde cuando está enfocado
                      disabledBorder: InputBorder
                          .none, // Sin borde cuando está deshabilitado
                      counterText: '', // Sin texto de contador
                    ),
                    textAlign:
                        TextAlign.start, // Alineación del texto al inicio
                    onChanged: cubit
                        .onChangedUsername, // Maneja los cambios en el nombre de usuario
                    onFocusChange: cubit
                        .onFocusChangedUsername, // Maneja los cambios de enfoque en el nombre de usuario
                    err: state.errorUsername?.asString(
                        context), // Muestra el error de nombre de usuario, si existe
                  ),
                ),
              ],
            ),
          ),
          // Si hay un error de nombre de usuario
          if (state.errorUsername != null) ...[
            const SizedBox(height: 4), // Espacio vertical
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20), // Relleno horizontal
              child: Text(
                S.current.inputErrorRequiredEmpty, // Mensaje de error
                style: const TextStyle(
                  color: AppColors.errorColor, // Color del texto de error
                  fontFamily: AppFonts.outfit, // Fuente del texto
                  fontWeight: FontWeight.w400, // Peso del texto
                  fontSize: 10, // Tamaño del texto
                ),
              ),
            ),
          ],
          const SizedBox(height: 10), // Espacio vertical
          AppInput(
            hint: S
                .of(context)
                .password, // Texto de sugerencia para la contraseña
            textAlign: TextAlign.left, // Alineación del texto a la izquierda
            obscure: true, // Oculta el texto de la contraseña
            onChanged:
                cubit.onChangedPassword, // Maneja los cambios en la contraseña
            onFocusChange: cubit
                .onFocusChangedPassword, // Maneja los cambios de enfoque en la contraseña
            onTogglePasswordVisibility: cubit
                .onTogglePasswordVisibility, // Maneja la visibilidad de la contraseña
            showPassword: state
                .passwordVisibilityStatus, // Muestra la contraseña si es verdadero
            type: TextInputType.visiblePassword, // Tipo de entrada de texto
            err: state.errorPassword?.asString(
                context), // Muestra el error de contraseña, si existe
            icon: const Icon(Icons.remove_red_eye_outlined,
                color:
                    Colors.black), // Icono para mostrar u ocultar la contraseña
          ),
        ],
      ),
    );
  }
}
