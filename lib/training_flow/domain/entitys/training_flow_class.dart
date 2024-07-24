import 'package:equatable/equatable.dart';

class TrainingFlowClass extends Equatable {
  final String id;
  final String name;
  final String video;
  final String time;
  final String description;

  const TrainingFlowClass({
    required this.id,
    required this.name,
    required this.video,
    required this.time,
    required this.description,
  });

  const TrainingFlowClass.initial()
      : this(
          name: '',
          video: '',
          time: '',
          description: '',
          id: '',
        );

  @override
  List<Object?> get props => [
        id,
        name,
        video,
        time,
        description,
      ];
}
