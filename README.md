# swagger_dart_codegen

This is derived from [swagger-dart-code-generator](https://github.com/epam-cross-platform-lab/swagger-dart-code-generator/).

Please check real [example](https://github.com/epam-cross-platform-lab/swagger-dart-code-generator/tree/master/example)

Show a real use of this to produce my SDK for flutter code. It makes things easier to Mobile apps development that calls backend API.

## Getting Started

### Step1
Put the API document `.yaml` or `.json` to a folder. Example:

```
PROJECT_ROOT/input_folder/petstore_api.yaml
...
```

### Step 2
Add input folder and output folder paths to **build.yaml**. Also set sources field.

```
targets:
  $default:
    sources:     
      - input_folder/**
      - lib/**
    builders:
      chopper_generator:
        options:
          header: "//Generated code"
      swagger_dart_code_generator:
        options:
          input_folder: "input_folder/"
          output_folder: "lib/mysdkv1.0/"
```

### Step 4
Set optional build parameters if it's needed.

```
separate_models: true
ignore_headers: true
exclude_paths:
  - "/items/{id}"
```

### Step 5
Run build command

```
flutter pub run build_runner build --delete-conflicting-outputs
```

### Final step
Enjoy generated code!
Put it into the flutter project, or manage it in a repository, example:

1. in the flutter project, add the dependency in ** pubspec.yaml **
```
# ...
  PetStoreSdk:
    git:
      url: https://github.com/{user}/PetStoreSdk.git
      path: v2/dart
# ...
```

2. usually the backend api is acting as a data model, so put a model and wrapped it:
```dart
import 'dart:io';

// ignore_for_file: depend_on_referenced_packages
import 'package:chopper/chopper.dart';
import 'package:petstore_sdk/sdkv2/petstore_v2.swagger.dart';
import 'package:flutter/foundation.dart';
import 'package:http/io_client.dart' as http;

class SwaggerAPIManager {
  late PetStorev2 myApi;

  SwaggerAPIManager._internal() {
    _init();
  }

  factory SwaggerAPIManager() => _instance;

  static final SwaggerAPIManager _instance = SwaggerAPIManager._internal();

  Future _init() async {
    var myHttpClient = HttpClient();
    myHttpClient.connectionTimeout = const Duration(seconds: 10);
    myApi = PetStorev2.create(
        client: ChopperClient(
            baseUrl: Uri.parse(Constant.baseUrl),
            interceptors: <RequestInterceptor>[HttpLoggingInterceptor()],
            converter: $JsonSerializableConverter(),
            client: http.IOClient(myHttpClient)));
  }
}

```

## Known weakness
1. this is an example. It depends on the developing branch of repo [swagger-dart-code-generator](https://github.com/epam-cross-platform-lab/swagger-dart-code-generator/)

2. should best use the Chopper library to handle request exceptions

## License
MIT