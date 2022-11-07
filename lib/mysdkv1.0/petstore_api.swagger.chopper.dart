//Generated SDK

part of 'petstore_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PetstoreApi extends PetstoreApi {
  _$PetstoreApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PetstoreApi;

  @override
  Future<Response<Pet>> _petPut({required Pet? body}) {
    final Uri $url = Uri.parse('/pet');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Pet, Pet>($request);
  }

  @override
  Future<Response<Pet>> _petPost({required Pet? body}) {
    final Uri $url = Uri.parse('/pet');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Pet, Pet>($request);
  }

  @override
  Future<Response<Pet>> _petPetIdGet({required int? petId}) {
    final Uri $url = Uri.parse('/pet/${petId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Pet, Pet>($request);
  }

  @override
  Future<Response<dynamic>> _petPetIdPost({
    required int? petId,
    String? name,
    String? status,
  }) {
    final Uri $url = Uri.parse('/pet/${petId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'name': name,
      'status': status,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _petPetIdDelete({
    String? apiKey,
    required int? petId,
  }) {
    final Uri $url = Uri.parse('/pet/${petId}');
    final Map<String, String> $headers = {
      if (apiKey != null) 'api_key': apiKey,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<String>> _userLoginGet({
    String? username,
    String? password,
  }) {
    final Uri $url = Uri.parse('/user/login');
    final Map<String, dynamic> $params = <String, dynamic>{
      'username': username,
      'password': password,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<dynamic>> _userLogoutGet() {
    final Uri $url = Uri.parse('/user/logout');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<User>> _userUsernameGet({required String? username}) {
    final Uri $url = Uri.parse('/user/${username}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<User, User>($request);
  }

  @override
  Future<Response<dynamic>> _userUsernamePut({
    required String? username,
    required User? body,
  }) {
    final Uri $url = Uri.parse('/user/${username}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _userUsernameDelete({required String? username}) {
    final Uri $url = Uri.parse('/user/${username}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
