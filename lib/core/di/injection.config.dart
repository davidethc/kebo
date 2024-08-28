// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/ai/cubit/ai/ai_cubit.dart' as _i12;
import '../../features/analytic/cubit/all_transaction/all_transaction_cubit.dart'
    as _i16;
import '../../features/analytic/cubit/analytic/analytic_cubit.dart' as _i17;
import '../../features/auth/presentation/cubit/forget_password/forget_password_cubit.dart'
    as _i23;
import '../../features/auth/presentation/cubit/login/login_cubit.dart' as _i26;
import '../../features/auth/presentation/cubit/register/register_cubit.dart'
    as _i27;
import '../../features/home/presentation/cubit/edit_profile/edit_profile_cubit.dart'
    as _i22;
import '../../features/home/presentation/cubit/home/home_cubit.dart' as _i24;
import '../../features/home/presentation/cubit/profile/profile_cubit.dart'
    as _i9;
import '../../features/main/presentation/cubit/main/main_cubit.dart' as _i8;
import '../../features/report/cubit/report/report_cubit.dart' as _i28;
import '../../features/splash/presentation/cubit/splash/splash_cubit.dart'
    as _i31;
import '../../features/transaction/presentation/cubit/add_account/add_account_cubit.dart'
    as _i14;
import '../../features/transaction/presentation/cubit/add_transaction/add_transaction_cubit.dart'
    as _i15;
import '../../features/transaction/presentation/cubit/connect_account/connect_account_cubit.dart'
    as _i19;
import '../../features/transaction/presentation/cubit/detail_account/detail_account_cubit.dart'
    as _i20;
import '../../features/transaction/presentation/cubit/detail_transaction/detail_transaction_cubit.dart'
    as _i21;
import '../../features/transaction/presentation/cubit/list_account/list_account_cubit.dart'
    as _i25;
import '../../features/transaction/presentation/cubit/search_category/search_category_cubit.dart'
    as _i29;
import '../../features/transaction/presentation/cubit/select_product/select_product_cubit.dart'
    as _i30;
import '../../features/transaction/presentation/cubit/transaction/transaction_cubit.dart'
    as _i32;
import '../data/providers/config_provider.dart' as _i7;
import '../data/providers/user_provider.dart' as _i11;
import '../data/requests/base_req.dart' as _i4;
import '../data/requests/requests.dart' as _i6;
import '../data/services/account_service.dart' as _i13;
import '../data/services/auth_service.dart' as _i18;
import '../data/services/chat_service.dart' as _i5;
import '../data/services/report_service.dart' as _i10;
import '../network/app_client.dart' as _i3;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AppClient>(() => _i3.AppClient());
  gh.factory<_i4.BaseReq>(() => _i4.BaseReq());
  gh.factory<_i5.ChatService>(() => _i5.ChatService(gh<_i6.BaseReq>()));
  gh.lazySingleton<_i7.ConfigProvider>(() => _i7.ConfigProvider());
  gh.factory<_i8.MainCubit>(() => _i8.MainCubit());
  gh.factory<_i9.ProfileCubit>(() => _i9.ProfileCubit());
  gh.factory<_i10.ReportService>(() => _i10.ReportService(gh<_i6.BaseReq>()));
  gh.lazySingleton<_i11.UserProvider>(() => _i11.UserProvider());
  gh.factory<_i12.AICubit>(() => _i12.AICubit(
        gh<_i5.ChatService>(),
        gh<_i11.UserProvider>(),
      ));
  gh.factory<_i13.AccountService>(() => _i13.AccountService(gh<_i6.BaseReq>()));
  gh.factory<_i14.AddAccountCubit>(
      () => _i14.AddAccountCubit(gh<_i13.AccountService>()));
  gh.factory<_i15.AddTransactionCubit>(
      () => _i15.AddTransactionCubit(gh<_i13.AccountService>()));
  gh.factory<_i16.AllTransactionCubit>(
      () => _i16.AllTransactionCubit(gh<_i13.AccountService>()));
  gh.factory<_i17.AnalyticCubit>(
      () => _i17.AnalyticCubit(gh<_i13.AccountService>()));
  gh.factory<_i18.AuthService>(() => _i18.AuthService(gh<_i6.BaseReq>()));
  gh.factory<_i19.ConnectAccountCubit>(
      () => _i19.ConnectAccountCubit(gh<_i13.AccountService>()));
  gh.factory<_i20.DetailAccountCubit>(
      () => _i20.DetailAccountCubit(gh<_i13.AccountService>()));
  gh.factory<_i21.DetailTransactionCubit>(
      () => _i21.DetailTransactionCubit(gh<_i13.AccountService>()));
  gh.factory<_i22.EditProfileCubit>(() => _i22.EditProfileCubit(
        gh<_i11.UserProvider>(),
        gh<_i13.AccountService>(),
      ));
  gh.factory<_i23.ForgetPasswordCubit>(
      () => _i23.ForgetPasswordCubit(gh<_i18.AuthService>()));
  gh.factory<_i24.HomeCubit>(() => _i24.HomeCubit(gh<_i10.ReportService>()));
  gh.factory<_i25.ListAccountCubit>(
      () => _i25.ListAccountCubit(gh<_i13.AccountService>()));
  gh.factory<_i26.LoginCubit>(() => _i26.LoginCubit(gh<_i18.AuthService>()));
  gh.factory<_i27.RegisterCubit>(
      () => _i27.RegisterCubit(gh<_i18.AuthService>()));
  gh.factory<_i28.ReportCubit>(
      () => _i28.ReportCubit(gh<_i10.ReportService>()));
  gh.factory<_i29.SearchCategoryCubit>(() => _i29.SearchCategoryCubit(
        gh<_i13.AccountService>(),
        gh<_i11.UserProvider>(),
      ));
  gh.factory<_i30.SelectProductCubit>(
      () => _i30.SelectProductCubit(gh<_i13.AccountService>()));
  gh.factory<_i31.SplashCubit>(() => _i31.SplashCubit(
        gh<_i13.AccountService>(),
        gh<_i11.UserProvider>(),
      ));
  gh.factory<_i32.TransactionCubit>(() => _i32.TransactionCubit(
        gh<_i10.ReportService>(),
        gh<_i13.AccountService>(),
      ));
  return getIt;
}
