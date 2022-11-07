import 'petstore_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'petstore_api.enums.swagger.dart' as enums;
export 'petstore_api.enums.swagger.dart';
export 'petstore_api.models.swagger.dart';

part 'petstore_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class PetstoreApi extends ChopperService {
  static PetstoreApi create({
    ChopperClient? client,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$PetstoreApi(client);
    }

    final newClient = ChopperClient(
        services: [_$PetstoreApi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$PetstoreApi(newClient);
  }

  ///Update an existing pet
  Future<chopper.Response<Pet>> petPut({required Pet? body}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petPut(body: body);
  }

  ///Update an existing pet
  @Put(
    path: '/pet',
    optionalBody: true,
  )
  Future<chopper.Response<Pet>> _petPut({@Body() required Pet? body});

  ///Add a new pet to the store
  Future<chopper.Response<Pet>> petPost({required Pet? body}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petPost(body: body);
  }

  ///Add a new pet to the store
  @Post(
    path: '/pet',
    optionalBody: true,
  )
  Future<chopper.Response<Pet>> _petPost({@Body() required Pet? body});

  ///Find pet by ID
  ///@param petId ID of pet to return
  Future<chopper.Response<Pet>> petPetIdGet({required int? petId}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petPetIdGet(petId: petId);
  }

  ///Find pet by ID
  ///@param petId ID of pet to return
  @Get(path: '/pet/{petId}')
  Future<chopper.Response<Pet>> _petPetIdGet(
      {@Path('petId') required int? petId});

  ///Updates a pet in the store with form data
  ///@param petId ID of pet that needs to be updated
  ///@param name Name of pet that needs to be updated
  ///@param status Status of pet that needs to be updated
  Future<chopper.Response> petPetIdPost({
    required int? petId,
    String? name,
    String? status,
  }) {
    return _petPetIdPost(petId: petId, name: name, status: status);
  }

  ///Updates a pet in the store with form data
  ///@param petId ID of pet that needs to be updated
  ///@param name Name of pet that needs to be updated
  ///@param status Status of pet that needs to be updated
  @Post(
    path: '/pet/{petId}',
    optionalBody: true,
  )
  Future<chopper.Response> _petPetIdPost({
    @Path('petId') required int? petId,
    @Query('name') String? name,
    @Query('status') String? status,
  });

  ///Deletes a pet
  ///@param api_key
  ///@param petId Pet id to delete
  Future<chopper.Response> petPetIdDelete({
    String? apiKey,
    required int? petId,
  }) {
    return _petPetIdDelete(apiKey: apiKey, petId: petId);
  }

  ///Deletes a pet
  ///@param api_key
  ///@param petId Pet id to delete
  @Delete(path: '/pet/{petId}')
  Future<chopper.Response> _petPetIdDelete({
    @Header('api_key') String? apiKey,
    @Path('petId') required int? petId,
  });

  ///Logs user into the system
  ///@param username The user name for login
  ///@param password The password for login in clear text
  Future<chopper.Response<String>> userLoginGet({
    String? username,
    String? password,
  }) {
    return _userLoginGet(username: username, password: password);
  }

  ///Logs user into the system
  ///@param username The user name for login
  ///@param password The password for login in clear text
  @Get(path: '/user/login')
  Future<chopper.Response<String>> _userLoginGet({
    @Query('username') String? username,
    @Query('password') String? password,
  });

  ///Logs out current logged in user session
  Future<chopper.Response> userLogoutGet() {
    return _userLogoutGet();
  }

  ///Logs out current logged in user session
  @Get(path: '/user/logout')
  Future<chopper.Response> _userLogoutGet();

  ///Get user by user name
  ///@param username The name that needs to be fetched. Use user1 for testing.
  Future<chopper.Response<User>> userUsernameGet({required String? username}) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _userUsernameGet(username: username);
  }

  ///Get user by user name
  ///@param username The name that needs to be fetched. Use user1 for testing.
  @Get(path: '/user/{username}')
  Future<chopper.Response<User>> _userUsernameGet(
      {@Path('username') required String? username});

  ///Update user
  ///@param username name that need to be deleted
  Future<chopper.Response> userUsernamePut({
    required String? username,
    required User? body,
  }) {
    return _userUsernamePut(username: username, body: body);
  }

  ///Update user
  ///@param username name that need to be deleted
  @Put(
    path: '/user/{username}',
    optionalBody: true,
  )
  Future<chopper.Response> _userUsernamePut({
    @Path('username') required String? username,
    @Body() required User? body,
  });

  ///Delete user
  ///@param username The name that needs to be deleted
  Future<chopper.Response> userUsernameDelete({required String? username}) {
    return _userUsernameDelete(username: username);
  }

  ///Delete user
  ///@param username The name that needs to be deleted
  @Delete(path: '/user/{username}')
  Future<chopper.Response> _userUsernameDelete(
      {@Path('username') required String? username});
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
