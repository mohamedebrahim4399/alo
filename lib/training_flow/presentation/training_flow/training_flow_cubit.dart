import 'package:alo/common/di/dependencies.dart';
import 'package:alo/common/utils/async.dart';
import 'package:alo/training_flow/domain/use_cases/get_training_flow_use_case.dart';
import 'package:alo/training_flow/presentation/training_flow/training_flow_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainingFlowCubit extends Cubit<TrainingFlowState> {
  late final GetTrainingFlowUseCase _getTrainingFlowUseCase;

  TrainingFlowCubit() : super(const TrainingFlowState.initial()) {
    _getTrainingFlowUseCase = getIt.get();
  }

  void getTrainingFlow() async {
    emit(state.copyWith(trainingFlow: const Async.loading()));
    final result = await _getTrainingFlowUseCase.call();
    result.fold(
      (l) => emit(state.copyWith(trainingFlow: Async.failure(l.toString()))),
      (r) => emit(state.copyWith(trainingFlow: Async.success(r))),
    );
  }
}
