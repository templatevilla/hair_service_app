import 'package:hair_service_app/util/images.dart';

import '../models/home_data_model.dart';

class HomeData {
  static List<Service> getService() {
    return [
      Service(GetImages.service1stImage, "Classic shawing"),
      Service(GetImages.service2ndImage, "Hair care"),
      Service(GetImages.service3rdImage, "Shawing"),
      Service(
        GetImages.service4thImage,
        "Hair cutting",
      ),
    ];
  }
}
