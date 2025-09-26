// {
//     "weight": {
//       "imperial": "6 - 13",
//       "metric": "3 - 6"
//     },
//     "height": {
//       "imperial": "9 - 11.5",
//       "metric": "23 - 29"
//     },
//     "id": 1,
//     "name": "Affenpinscher",
//     "bred_for": "Small rodent hunting, lapdog",
//     "breed_group": "Toy",
//     "life_span": "10 - 12 years",
//     "temperament": "Stubborn, Curious, Playful, Adventurous, Active, Fun-loving",
//     "origin": "Germany, France",
//     "reference_image_id": "BJa4kxc4X"
//   },


class DogBreed {
  final int id;
  final String name;
  final String bredFor;
  final String breedGroup;
  final String lifeSpan;
  final String temperament;
  final String referenceImageId;
  final String weightImperial;
  final String weightMetric;
  final String heightImperial;
  final String heightMetric;

  DogBreed({
    required this.id,
    required this.name,
    required this.bredFor,
    required this.breedGroup,
    required this.lifeSpan,
    required this.temperament,
    required this.referenceImageId,
    required this.weightImperial,
    required this.weightMetric,
    required this.heightImperial,
    required this.heightMetric,
  });

  factory DogBreed.fromJson(Map<String, dynamic> json) {
    return DogBreed(
      id: json["id"],
      name: json["name"] ?? "",
      bredFor: json["bred_for"] ?? "",
      breedGroup: json["breed_group"] ?? "",
      lifeSpan: json["life_span"] ?? "",
      temperament: json["temperament"] ?? "",
      referenceImageId: json["reference_image_id"] ?? "",
      weightImperial: json["weight"]["imperial"] ?? "",
      weightMetric: json["weight"]["metric"] ?? "",
      heightImperial: json["height"]["imperial"] ?? "",
      heightMetric: json["height"]["metric"] ?? "",
    );
  }
}
