// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../body_statistics/cubit/body_statistics_cubit.dart' as _i17;
import '../../database/database.dart' as _i7;
import '../../database/service/hive_service.dart' as _i4;
import '../../session_management/bloc/session_management_bloc.dart' as _i16;
import '../../settings/cubit/settings_cubit.dart' as _i3;
import '../../template_management/bloc/template_management_bloc.dart' as _i10;
import '../../training_sessions/bloc/training_sessions_bloc.dart' as _i15;
import '../../training_sessions/repository/training_session_hive_repository.dart'
    as _i12;
import '../../training_sessions/training_sessions.dart' as _i11;
import '../../user_exercise/bloc/user_exercises_bloc.dart' as _i14;
import '../../user_exercise/repository/user_exercise_hive_repository.dart'
    as _i6;
import '../../user_exercise/user_exercise.dart' as _i5;
import '../../workout_templates/bloc/workout_templates_bloc.dart' as _i13;
import '../../workout_templates/repository/workout_template_hive_repository.dart'
    as _i9;
import '../../workout_templates/workout_templates.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.SettingsCubit>(() => _i3.SettingsCubit());
    gh.singleton<_i4.HiveService>(
      () => _i4.HiveService(),
      dispose: (i) => i.dispose(),
    );
    gh.factory<_i5.IUserExerciseRepository>(() =>
        _i6.UserExerciseHiveRepository(hiveService: gh<_i7.HiveService>()));
    gh.factory<_i8.IWorkoutTemplateRepository>(() =>
        _i9.WorkoutTemplateHiveRepository(hiveService: gh<_i7.HiveService>()));
    gh.factory<_i10.TemplateManagementBloc>(() => _i10.TemplateManagementBloc(
        trainingSessionRepository: gh<_i8.IWorkoutTemplateRepository>()));
    gh.factory<_i11.ITrainingSessionRepository>(() =>
        _i12.TrainingSessionHiveRepository(hiveService: gh<_i7.HiveService>()));
    gh.factory<_i13.WorkoutTemplatesBloc>(() => _i13.WorkoutTemplatesBloc(
        workoutTemplateRepository: gh<_i8.IWorkoutTemplateRepository>()));
    gh.factory<_i14.UserExercisesBloc>(() => _i14.UserExercisesBloc(
        userExerciseRepository: gh<_i5.IUserExerciseRepository>()));
    gh.factory<_i15.TrainingSessionsBloc>(() => _i15.TrainingSessionsBloc(
        trainingSessionRepository: gh<_i11.ITrainingSessionRepository>()));
    gh.factory<_i16.SessionManagementBloc>(() => _i16.SessionManagementBloc(
        trainingSessionRepository: gh<_i11.ITrainingSessionRepository>()));
    gh.factory<_i17.BodyStatisticsCubit>(() => _i17.BodyStatisticsCubit(
        trainingSessionsRepository: gh<_i11.ITrainingSessionRepository>()));
    return this;
  }
}
