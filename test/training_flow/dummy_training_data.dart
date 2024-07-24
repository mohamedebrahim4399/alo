import 'package:alo/common/utils/exceptions.dart';
import 'package:alo/training_flow/domain/entitys/coach_entity.dart';
import 'package:alo/training_flow/domain/entitys/training_flow_class.dart';
import 'package:alo/training_flow/domain/entitys/training_flow_entity.dart';
import 'package:either_dart/either.dart';

Either<Exception, TrainingFlowEntity> get dummyTrainingFlowEntitySuccess =>
    Right(dummyTrainingFlowEntity);

TrainingFlowEntity get dummyTrainingFlowEntity => const TrainingFlowEntity(
      id: '1',
      coverImage: 'https://picsum.photos/200/300',
      seriesName: 'Gold Series',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      coachesName: 'John Doe',
      overviewVideo: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
      classes: [
        TrainingFlowClass(
          id: 'l',
          name: 'Class 1',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          video: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
          time: '',
        ),
        TrainingFlowClass(
          id: '2',
          name: 'Class 2',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          video: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
          time: '',
        ),
      ],
      coaches: [
        CoachEntity(
          id: '1',
          name: 'John Doe',
          image: 'https://picsum.photos/200/300',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          runTimes: '10',
          numberOfVideos: 10,
          difficulty: '10',
          intensity: '10',
        )
      ],
    );
