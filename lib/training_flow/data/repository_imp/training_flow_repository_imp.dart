import 'package:alo/common/utils/exceptions.dart';
import 'package:alo/training_flow/data/data_source/training_flow_data_source.dart';
import 'package:alo/training_flow/domain/entitys/training_flow_entity.dart';
import 'package:alo/training_flow/domain/repository/training_flow_repository.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TrainingFlowRepository)
class TrainingFlowRepositoryImp implements TrainingFlowRepository {
  final TrainingFlowDataSource dataSource;

  TrainingFlowRepositoryImp({required this.dataSource});

  @override
  Future<Either<Exception, TrainingFlowEntity>> getTrainingFlow() async {
    try {
      return Right(await dataSource.getTrainingFlow());
    } catch (e) {
      return Left(ServerError('server error'));
    }
  }
}
