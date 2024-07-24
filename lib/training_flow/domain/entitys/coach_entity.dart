import 'package:equatable/equatable.dart';

class CoachEntity extends Equatable {
  final String id;
  final String name;
  final String image;
  final String description;
  final String runTimes;
  final int numberOfVideos;
  final String difficulty;
  final String intensity;

  const CoachEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.runTimes,
    required this.numberOfVideos,
    required this.difficulty,
    required this.intensity,
  });

  const CoachEntity.initial()
      : this(
          intensity: '',
          name: '',
          image: '',
          description: '',
          runTimes: '',
          numberOfVideos: 0,
          difficulty: '',
          id: '',
        );

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        description,
        runTimes,
        numberOfVideos,
        difficulty,
        intensity,
      ];
}
