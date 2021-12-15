import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/color.dart';
import 'package:colourlovers_api/colors-service.dart';
import 'package:colourlovers_api/parameters.dart';

class ClClient {
  Future<List<ClColor>?> getColors({
    String lover = "",
    int hueMin = 0,
    int hueMax = 359,
    int brightnessMin = 0,
    int brightnessMax = 99,
    String keywords = "",
    bool keywordExact = false,
    RequestOrderBy orderBy = RequestOrderBy.dateCreated,
    RequestSortBy sortBy = RequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    assert(hueMin >= 0 && hueMin <= 359);
    assert(hueMin < hueMax);

    assert(brightnessMin >= 0 && brightnessMax <= 99);
    assert(brightnessMin < brightnessMax);

    return _callClient<List<ClColor>?, ColorsService>(
      (service) => service.getColors(
        lover,
        "$hueMin,$hueMax",
        "$brightnessMin,$brightnessMax",
        keywords,
        keywordExact ? 1 : 0,
        orderBy.name,
        sortBy.name,
        numResults,
        resultOffset,
        RequestFormat.json.name,
      ),
    );
  }

  Future<List<ClColor>?> getNewColors({
    String lover = "",
    int hueMin = 0,
    int hueMax = 359,
    int brightnessMin = 0,
    int brightnessMax = 99,
    String keywords = "",
    bool keywordExact = false,
    RequestSortBy sortBy = RequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClColor>?, ColorsService>(
      (service) => service.getNewColors(
        lover,
        "$hueMin,$hueMax",
        "$brightnessMin,$brightnessMax",
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        RequestFormat.json.name,
      ),
    );
  }

  Future<List<ClColor>?> getTopColors({
    String lover = "",
    int hueMin = 0,
    int hueMax = 359,
    int brightnessMin = 0,
    int brightnessMax = 99,
    String keywords = "",
    bool keywordExact = false,
    RequestSortBy sortBy = RequestSortBy.ASC,
    int numResults = 20,
    int resultOffset = 0,
  }) async {
    return _callClient<List<ClColor>?, ColorsService>(
      (service) => service.getTopColors(
        lover,
        "$hueMin,$hueMax",
        "$brightnessMin,$brightnessMax",
        keywords,
        keywordExact ? 1 : 0,
        sortBy.name,
        numResults,
        resultOffset,
        RequestFormat.json.name,
      ),
    );
  }

  Future<ClColor?> getRandomColor() async {
    return _callClient<ClColor?, ColorsService>(
      (service) => service.getRandomColor(
        RequestFormat.json.name,
      ),
    );
  }
}

Future<ReturnType?> _callClient<ReturnType, ServiceType extends ChopperService>(
  Future<Response> Function(ServiceType service) callback,
) async {
  final chopper = ChopperClient(
    baseUrl: "http://www.colourlovers.com/api",
    services: [
      ColorsService.create(),
    ],
  );
  final service = chopper.getService<ServiceType>();
  final response = await callback(service);
  chopper.dispose();
  if (response.isSuccessful) {
    final body = response.body;
    print(body);
    return body;
  } else {
    final code = response.statusCode;
    final error = response.error;
    print("Error: $code $error");
    return null;
  }
}
