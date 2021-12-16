import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/converters.dart';
import 'package:colourlovers_api/lover.dart';

part "lovers_service.chopper.dart";

@ChopperApi(baseUrl: "/lovers")
abstract class LoversService extends ChopperService {
  static LoversService create([ChopperClient? client]) => _$LoversService(client);

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/")
  Future<Response<List<ClLover>>> getLovers(
    @Query() String orderCol,
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/new")
  Future<Response<List<ClLover>>> getNewLovers(
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );

  @FactoryConverter(
    response: _allItems,
  )
  @Get(path: "/top")
  Future<Response<List<ClLover>>> getTopLovers(
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );
}

@ChopperApi(baseUrl: "/lover")
abstract class LoverService extends ChopperService {
  static LoverService create([ChopperClient? client]) => _$LoverService(client);

  @FactoryConverter(
    response: _firstItem,
  )
  @Get(path: "/{userName}")
  Future<Response<ClLover>> getLover(
    @Path() String userName,
    @Query() int comments,
    @Query() String format,
  );
}

Response _firstItem<T>(Response response) {
  return firstItem(response, ClLover.fromJson);
}

Response _allItems<T>(Response response) {
  return allItems(response, ClLover.fromJson);
}
