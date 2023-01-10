# corelate
Do what works.

## Getting Started

## Coding conventions
Each view has a controller to manage state and data flow.
Each view's controller has a model to represent that view.
Naming conventions for the controller and model are:
- **model**: `NameOfModel`
- **controller**: `NameOfModelC` // Note the `C` postfix.
Note: Riverpod generator will automatically make the usable name of the controller: `nameOfModelCProvider`.

## Building

### General builds
From the project root directory
- `flutter clean`
- `flutter pub get`

Following 5 steps are only necessary if using Firebase:
1. Move to `ios` directory
2. Delete Podfile.lock
3. `arch -x86_64 pod repo update`
4. `arch -x86_64 pod install`
5. Move to project root directory

From the project root directory:
- `flutter run`

### Build Realm models
`flutter pub run realm generate`

### Code generation
Move to project root directory and either do:
- `flutter pub run build_runner watch --delete-conflicting-outputs` 
Or:
- `dart run build_runner watch`

### Splash page
1. `flutter pub run flutter_native_splash:remove`
2. `flutter pub run flutter_native_splash:create`

### Create release builds
Android: build app bundle:
- `flutter build appbundle`

iOS:
1. Open XCWorkspace file in ios/ directory in Xcode
2. Set build target to `Any iOS device (arm64)
3. Product > Archive
4. Go through distribution flow once built to send to Appstore Connect