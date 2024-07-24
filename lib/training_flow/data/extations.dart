import 'package:alo/training_flow/data/models/api_training_flow_result.dart';
import 'package:alo/training_flow/domain/entitys/coach_entity.dart';
import 'package:alo/training_flow/domain/entitys/training_flow_class.dart';
import 'package:alo/training_flow/domain/entitys/training_flow_entity.dart';

extension ConvertApiTraingFlowToEntity on ApiTrainingFlowResult {
  TrainingFlowEntity map() {
    return TrainingFlowEntity(
      id: id ?? '',
      coverImage: coverImage ?? '',
      seriesName: seriesName ?? '',
      coachesName: coachesName ?? '',
      description: description ?? '',
      overviewVideo: overviewVideo ?? '',
      coaches: coaches?.map((e) => e.map()).toList() ?? [],
      classes: classes?.map((e) => e.map()).toList() ?? [],
    );
  }
}

extension ConvertApiCoauchToEntity on ApiCoachResult {
  CoachEntity map() {
    return CoachEntity(
      id: id ?? '',
      name: name ?? '',
      image: image ?? '',
      description: description ?? '',
      runTimes: runTimes ?? '',
      numberOfVideos: numberOfVideos ?? 0,
      difficulty: difficulty ?? '',
      intensity: intensity ?? '',
    );
  }
}

extension ConvertApiClassToEntity on ApiClassResult {
  TrainingFlowClass map() {
    return TrainingFlowClass(
      id: id ?? '',
      name: name ?? '',
      video: video ?? '',
      time: time ?? '',
      description: description ?? '',
    );
  }
}
