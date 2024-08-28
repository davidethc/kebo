import 'package:kebo_app/core/data/entities/institution_entity/institution_entity.dart';
import 'package:kebo_app/core/data/entities/transaction_entity/transaction_entity/transaction_entity.dart';
import 'package:kebo_app/core/di/injection.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/utils/widgets/webview/webview_link.dart';
import 'package:kebo_app/features/analytic/cubit/all_transaction/all_transaction_cubit.dart';
import 'package:kebo_app/features/analytic/screens/all_transaction_screen.dart';
import 'package:kebo_app/features/auth/presentation/cubit/forget_password/forget_password_cubit.dart';
import 'package:kebo_app/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:kebo_app/features/auth/presentation/cubit/register/register_cubit.dart';
import 'package:kebo_app/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:kebo_app/features/auth/presentation/screens/login_screen.dart';
import 'package:kebo_app/features/home/presentation/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:kebo_app/features/home/presentation/cubit/profile/profile_cubit.dart';
import 'package:kebo_app/features/home/presentation/home.dart';
import 'package:kebo_app/features/auth/presentation/screens/register_screen.dart';
import 'package:kebo_app/features/home/presentation/screens/edit_profile_screen.dart';
import 'package:kebo_app/features/home/presentation/screens/invite_screen.dart';
import 'package:kebo_app/features/home/presentation/screens/notification_setting_screen.dart';
import 'package:kebo_app/features/onboarding/presentation/screens/complete_screen.dart';
import 'package:kebo_app/features/onboarding/presentation/screens/welcome_screen.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/add_account/add_account_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/add_transaction/add_transaction_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/connect_account/connect_account_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/detail_account/detail_account_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/detail_transaction/detail_transaction_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/list_account/list_account_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/select_product/select_product_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/screens/add_account_screen.dart';
import 'package:kebo_app/features/transaction/presentation/screens/add_transaction_screen.dart';
import 'package:kebo_app/features/transaction/presentation/screens/connect_account.dart';
import 'package:kebo_app/features/transaction/presentation/screens/detail_account_screen.dart';
import 'package:kebo_app/features/transaction/presentation/screens/detail_transaction_screen.dart';
import 'package:kebo_app/features/transaction/presentation/screens/list_account_screen.dart';
import 'package:kebo_app/features/transaction/presentation/screens/select_product_screen.dart';
import 'package:kebo_app/features/transaction/presentation/screens/sync_account_screen.dart';

import '../../features/features.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

Future<dynamic> rootNavigate(String routeName) =>
    rootNavigatorKey.currentState!.pushNamed(routeName);

void rootPop() => rootNavigatorKey.currentState!.pop();

abstract class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    debugPrint('onGenerateRoute');
    switch (settings.name) {
      case AppScreens.splash:
        return _getRouteWithFadeAnimationAndCubit<SplashCubit>(
            const SplashScreen());
      case AppScreens.main:
        return _getRouteWithFadeAnimationAndCubit<MainCubit>(
            const MainScreen());
      case AppScreens.login:
        return _getRouteWithFadeAnimationAndCubit<LoginCubit>(
            const LoginScreen()); // Asegúrate de que el nombre de la pantalla es correcto
      case AppScreens.welcome:
        return _getRouteWithFadeAnimation(const WelcomeScreen());
      case AppScreens.language:
        return _getRouteWithFadeAnimation(const LanguageScreen());
      case AppScreens.complete:
        return _getRouteWithFadeAnimation(const CompleteScreen());
      case AppScreens.register:
        return _getRouteWithFadeAnimationAndCubit<RegisterCubit>(
            const RegisterScreen());
      case AppScreens.forget:
        return _getRouteWithFadeAnimationAndCubit<ForgetPasswordCubit>(
            const ForgetPasswordScreen());
      case AppScreens.profile:
        return _getRouteWithFadeAnimationAndCubit<ProfileCubit>(
            const ProfileScreen());
      case AppScreens.syncAccount:
        return _getRouteWithFadeAnimation(
            SyncAccountScreen(link: settings.arguments as String));
      case AppScreens.connectAccount:
        return _getRouteWithFadeAnimationAndCubit<ConnectAccountCubit>(
            ConnectAccountScreen(
                institution: settings.arguments as InstitutionEntity));
      case AppScreens.detailAccount:
        final args = settings.arguments as Map;
        String id = args['id'];
        bool hasManual = args['hasManual'];
        return _getRouteWithFadeAnimationAndCubit<DetailAccountCubit>(
          DetailAccountScreen(
            id: id,
            hasManual: hasManual,
          ),
        );
      case AppScreens.listAccount:
        return _getRouteWithFadeAnimationAndCubit<ListAccountCubit>(
            const ListAccountScreen());
      case AppScreens.addAccount:
        return _getRouteWithFadeAnimationAndCubit<AddAccountCubit>(
            const AddAccountScreen());
      case AppScreens.addTransaction:
        return _getRouteWithFadeAnimationAndCubit<AddTransactionCubit>(
            AddTransactionScreen(id: settings.arguments as String));
      case AppScreens.allTransaction:
        return _getRouteWithFadeAnimationAndCubit<AllTransactionCubit>(
            const AllTransacitonScreen()); // Corrige el nombre de la pantalla aquí
      case AppScreens.detailTransaction:
        return _getRouteWithFadeAnimationAndCubit<DetailTransactionCubit>(
            DetailTransactionScreen(
          transaction: settings.arguments as TransactionEntity,
        ));
      case AppScreens.webviewLink:
        return _getRouteWithFadeAnimation(WebviewLink(
          url: settings.arguments as String,
        ));
      case AppScreens.notification:
        return _getRouteWithFadeAnimation(const NotificationSettingScreen());
      case AppScreens.invite:
        return _getRouteWithFadeAnimation(const InviteScreen());
      case AppScreens.editProfile:
        return _getRouteWithFadeAnimationAndCubit<EditProfileCubit>(
            const EditProfileScreen());
      case AppScreens.selectProduct:
        return _getRouteWithFadeAnimationAndCubit<SelectProductCubit>(
            SelectProductScreen(
          institution: settings.arguments as String,
        ));
      default:
        debugPrint('Route ${settings.name} not found');
        throw Exception('Did not register route in route_generator.dart');
    }
  }

  static Route<dynamic>
      _getRouteWithFadeAnimationAndCubit<Cubit extends BlocBase<Object?>>(
          Widget widget,
          [Cubit Function(BuildContext)? create]) {
    return _getRouteWithFadeAnimation(
      BlocProvider<Cubit>(
        create: create ?? (_) => getIt<Cubit>(),
        child: widget,
      ),
    );
  }

  static Route<dynamic> _getRouteWithFadeAnimation(
    Widget widget,
  ) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => widget,
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
        opacity: animation,
        child: child, // Se debería usar 'child' aquí
      ),
    );
  }
}
