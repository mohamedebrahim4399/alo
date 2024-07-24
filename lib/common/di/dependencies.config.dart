// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../training_flow/data/data_source/training_flow_data_source.dart'
    as _i420;
import '../../training_flow/data/repository_imp/training_flow_repository_imp.dart'
    as _i962;
import '../../training_flow/domain/repository/training_flow_repository.dart'
    as _i687;
import '../../training_flow/domain/use_cases/get_training_flow_use_case.dart'
    as _i609;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i420.TrainingFlowDataSource>(
        () => _i420.TrainingFlowTrainingFlowDataSourceImpl());
    gh.factory<_i687.TrainingFlowRepository>(() =>
        _i962.TrainingFlowRepositoryImp(
            dataSource: gh<_i420.TrainingFlowDataSource>()));
    gh.factory<_i609.GetTrainingFlowUseCase>(
        () => _i609.GetTrainingFlowUseCase(gh<_i687.TrainingFlowRepository>()));
    return this;
  }
}
