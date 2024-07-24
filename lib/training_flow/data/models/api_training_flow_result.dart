class ApiTrainingFlowResult {
  final String? id;
  final String? coverImage;
  final String? seriesName;
  final String? coachesName;
  final String? description;
  final String? overviewVideo;
  final List<ApiCoachResult>? coaches;
  final List<ApiClassResult>? classes;

  ApiTrainingFlowResult({
    this.id,
    this.coverImage,
    this.seriesName,
    this.coachesName,
    this.description,
    this.overviewVideo,
    this.coaches,
    this.classes,
  });

  factory ApiTrainingFlowResult.fromJson(Map<String, dynamic> json) =>
      ApiTrainingFlowResult(
        id: json["id"],
        coverImage: json["coverImage"],
        seriesName: json["seriesName"],
        coachesName: json["coachesName"],
        description: json["description"],
        overviewVideo: json["overviewVideo"],
        coaches: json["coaches"] == null
            ? []
            : List<ApiCoachResult>.from(
                json["coaches"]!.map((x) => ApiCoachResult.fromJson(x))),
        classes: json["classes"] == null
            ? []
            : List<ApiClassResult>.from(
                json["classes"]!.map((x) => ApiClassResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "coverImage": coverImage,
        "seriesName": seriesName,
        "coachesName": coachesName,
        "description": description,
        "overviewVideo": overviewVideo,
        "coaches": coaches == null
            ? []
            : List<dynamic>.from(coaches!.map((x) => x.toJson())),
        "classes": classes == null
            ? []
            : List<dynamic>.from(classes!.map((x) => x.toJson())),
      };
}

class ApiClassResult {
  final String? id;
  final String? name;
  final String? video;
  final String? description;
  final String? time;

  ApiClassResult({
    this.id,
    this.name,
    this.video,
    this.description,
    this.time,
  });

  factory ApiClassResult.fromJson(Map<String, dynamic> json) => ApiClassResult(
        id: json["id"],
        name: json["name"],
        video: json["video"],
        description: json["description"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "video": video,
        "description": description,
        "time": time,
      };
}

class ApiCoachResult {
  final String? id;
  final String? name;
  final String? image;
  final String? description;
  final String? runTimes;
  final int? numberOfVideos;
  final String? difficulty;
  final String? intensity;

  ApiCoachResult({
    this.id,
    this.name,
    this.image,
    this.description,
    this.runTimes,
    this.numberOfVideos,
    this.difficulty,
    this.intensity,
  });

  factory ApiCoachResult.fromJson(Map<String, dynamic> json) => ApiCoachResult(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        description: json["description"],
        runTimes: json["runTimes"],
        numberOfVideos: json["numberOfVideos"],
        difficulty: json["difficulty"],
        intensity: json["intensity"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description": description,
        "runTimes": runTimes,
        "numberOfVideos": numberOfVideos,
        "difficulty": difficulty,
        "intensity": intensity,
      };
}
