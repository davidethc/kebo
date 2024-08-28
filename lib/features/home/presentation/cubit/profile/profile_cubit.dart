import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

@Injectable()
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));
}
