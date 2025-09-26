import 'package:bca_6/dog/dog_breed.dart';
import 'package:get/get.dart';
import 'dog_service.dart';

class DogController extends GetxController {
  var dogList = <DogBreed>[].obs;
  var isLoading = true.obs;

  int? dogID;

  final DogService _dogService = DogService();

  @override
  void onInit() {
    super.onInit();
    fetchDogBreeds();
  }

  void fetchDogBreeds() async {
    try {
      isLoading(true);
      var result = await _dogService.fetchBreeds(limit: 30, page: 0);
      dogList.assignAll(result);
    } catch (e) {
      print("Error: $e");
    } finally {
      isLoading(false);
    }
  }

  void fetchDogDetail() async {
    try {
      isLoading(true);
    var result = await _dogService.fetchBreedDetail(dogID!);
      
    } catch (e) {
      print("Error: $e");
    } finally {
      isLoading(false);
    }
  }
}
