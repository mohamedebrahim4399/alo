import 'package:alo/common/utils/async.dart';
import 'package:alo/training_flow/domain/entitys/training_flow_entity.dart';
import 'package:equatable/equatable.dart';

class TrainingFlowState extends Equatable {
  final Async<TrainingFlowEntity> trainingFlow;

  const TrainingFlowState({required this.trainingFlow});

  const TrainingFlowState.initial()
      : this(
          trainingFlow: const Async.initial(),
        );

  TrainingFlowState copyWith({
    Async<TrainingFlowEntity>? trainingFlow,
  }) {
    return TrainingFlowState(
      trainingFlow: trainingFlow ?? this.trainingFlow,
    );
  }

  @override
  List<Object> get props => [
        trainingFlow,
      ];
}
