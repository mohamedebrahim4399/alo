import 'package:alo/training_flow/data/data_source/training_flow_data_source.dart';
import 'package:alo/training_flow/domain/entitys/training_flow_entity.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../dummy_training_data.dart';

@GenerateMocks([TrainingFlowEntity])
void main() {
  provideDummy<Either<Exception, TrainingFlowEntity>>(
      dummyTrainingFlowEntitySuccess);
  group("test training flow data source", () {
    test("test success", () async {
      final dataSource = TrainingFlowTrainingFlowDataSourceImpl();

      final result = await dataSource.getTrainingFlow();
      expect(result, equals(dummyTrainingFlowEntity));
    });
  });
}
