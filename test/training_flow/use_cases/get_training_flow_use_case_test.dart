import 'package:alo/training_flow/domain/entitys/training_flow_entity.dart';
import 'package:alo/training_flow/domain/repository/training_flow_repository.dart';
import 'package:alo/training_flow/domain/use_cases/get_training_flow_use_case.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../dummy_training_data.dart';
import 'get_training_flow_use_case_test.mocks.dart';

@GenerateMocks([TrainingFlowRepository])
void main() {
  provideDummy<Either<Exception, TrainingFlowEntity>>(
      dummyTrainingFlowEntitySuccess);
  group("test training flow use case", () {
    test("test success", () async {
      final repository = MockTrainingFlowRepository();
      final useCase = GetTrainingFlowUseCase(
        repository,
      );
      when(repository.getTrainingFlow())
          .thenAnswer((_) async => dummyTrainingFlowEntitySuccess);

      final result = await useCase();
      expect(result, equals(dummyTrainingFlowEntitySuccess));
    });
  });
}
