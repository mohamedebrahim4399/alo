import 'package:alo/training_flow/data/extations.dart';
import 'package:alo/training_flow/data/models/api_training_flow_result.dart';
import 'package:alo/training_flow/data/training_data.dart';
import 'package:alo/training_flow/domain/entitys/training_flow_entity.dart';
import 'package:injectable/injectable.dart';

abstract class TrainingFlowDataSource {
  Future<TrainingFlowEntity> getTrainingFlow();
}

@Injectable(as: TrainingFlowDataSource)
class TrainingFlowTrainingFlowDataSourceImpl implements TrainingFlowDataSource {
  @override
  Future<TrainingFlowEntity> getTrainingFlow() async {
    const data = TrainingData.data;
    final result = ApiTrainingFlowResult.fromJson(data);
    return result.map();
  }
}
