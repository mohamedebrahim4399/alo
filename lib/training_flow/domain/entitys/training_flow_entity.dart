import 'package:alo/training_flow/domain/entitys/coach_entity.dart';
import 'package:alo/training_flow/domain/entitys/training_flow_class.dart';
import 'package:equatable/equatable.dart';

class TrainingFlowEntity extends Equatable {
  final String id;
  final String coverImage;
  final String seriesName;
  final String coachesName;
  final String description;
  final String overviewVideo;
  final List<CoachEntity> coaches;
  final List<TrainingFlowClass> classes;

  const TrainingFlowEntity({
    required this.id,
    required this.coverImage,
    required this.seriesName,
    required this.coachesName,
    required this.description,
    required this.overviewVideo,
    required this.coaches,
    required this.classes,
  });

  @override
  List<Object?> get props => [
        id,
        coverImage,
        seriesName,
        coachesName,
        description,
        overviewVideo,
        coaches,
        classes,
      ];
}
