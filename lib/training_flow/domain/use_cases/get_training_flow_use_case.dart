import 'package:alo/training_flow/domain/entitys/training_flow_entity.dart';
import 'package:alo/training_flow/domain/repository/training_flow_repository.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetTrainingFlowUseCase {
  final TrainingFlowRepository _trainingFlowRepository;

  const GetTrainingFlowUseCase(this._trainingFlowRepository);

  Future<Either<Exception, TrainingFlowEntity>> call() async {
    return await _trainingFlowRepository.getTrainingFlow();
  }
}
