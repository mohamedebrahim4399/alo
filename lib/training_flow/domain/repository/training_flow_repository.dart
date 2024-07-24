import 'package:alo/training_flow/domain/entitys/training_flow_entity.dart';
import 'package:either_dart/either.dart';

abstract class TrainingFlowRepository {
  Future<Either<Exception, TrainingFlowEntity>> getTrainingFlow();
}
