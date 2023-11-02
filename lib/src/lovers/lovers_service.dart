import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:colourlovers_api/src/converters.dart';
import 'package:colourlovers_api/src/lovers/lover.dart';

part 'lovers_service.chopper.dart';

@ChopperApi(baseUrl: '/lovers')
abstract class LoversService extends ChopperService {
  static LoversService create([ChopperClient? client]) =>
      _$LoversService(client);

  @FactoryConverter(
    response: _convertResponseList,
  )
  @Get(path: '/')
  Future<Response<List<ColourloversLover>>> getLovers(
    @Query() String orderCol,
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );

  @FactoryConverter(
    response: _convertResponseList,
  )
  @Get(path: '/new')
  Future<Response<List<ColourloversLover>>> getNewLovers(
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );

  @FactoryConverter(
    response: _convertResponseList,
  )
  @Get(path: '/top')
  Future<Response<List<ColourloversLover>>> getTopLovers(
    @Query() String sortBy,
    @Query() int numResults,
    @Query() int resultOffset,
    @Query() String format,
  );
}

@ChopperApi(baseUrl: '/lover')
abstract class LoverService extends ChopperService {
  static LoverService create([ChopperClient? client]) => _$LoverService(client);

  @FactoryConverter(
    response: _convertResponseObject,
  )
  @Get(path: '/{userName}')
  Future<Response<ColourloversLover>> getLover(
    @Path() String userName,
    @Query() int comments,
    @Query() String format,
  );
}

Response<ColourloversLover> _convertResponseObject(
  Response<dynamic> response,
) {
  return convertResponseFirstObject(
    response,
    ColourloversLover.fromJson,
  );
}

Response<List<ColourloversLover>> _convertResponseList(
  Response<dynamic> response,
) {
  return convertResponseList(
    response,
    ColourloversLover.fromJson,
  );
}
