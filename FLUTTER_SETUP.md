# Flutter Frontend Setup Instructions

Since Flutter is not currently installed on your system, please follow these steps:

## Install Flutter

### Windows
1. Download Flutter SDK from: https://docs.flutter.dev/get-started/install/windows
2. Extract the zip file to a location (e.g., C:\src\flutter)
3. Add Flutter to your PATH:
   - Search for "Environment Variables" in Windows
   - Add `C:\src\flutter\bin` to your PATH
4. Run `flutter doctor` to verify installation

### macOS
```bash
# Using Homebrew
brew install --cask flutter

# Or download from: https://docs.flutter.dev/get-started/install/macos
```

### Linux
```bash
# Download and extract Flutter
# Add to PATH in ~/.bashrc or ~/.zshrc
export PATH="$PATH:`pwd`/flutter/bin"

# See: https://docs.flutter.dev/get-started/install/linux
```

## Create Frontend Project

Once Flutter is installed, run:

```bash
cd C:\Users\justi\Desktop\currentProjects\Hush\hush-app
flutter create frontend
cd frontend
flutter pub get
```

## Verify Installation

```bash
flutter doctor
```

This command checks your environment and displays a report of the status of your Flutter installation.

## Run the App

```bash
# Make sure you have a device connected or emulator running
flutter devices

# Run the app
flutter run
```

## Connect to Backend API

The Flutter app will need to connect to your FastAPI backend. Update the API endpoint in your Flutter code to point to `http://localhost:8000` (or your backend URL).

Example HTTP client setup in Flutter:
```dart
// Add to pubspec.yaml
dependencies:
  http: ^1.1.0

// Usage in Dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  final response = await http.get(
    Uri.parse('http://localhost:8000/'),
  );
  if (response.statusCode == 200) {
    print(response.body);
  }
}
```

## Next Steps

1. Install Flutter following the instructions above
2. Run the `flutter create frontend` command
3. Start developing your mobile/web app
4. Connect it to your FastAPI backend

For more information, see:
- Flutter Documentation: https://docs.flutter.dev
- Flutter Getting Started: https://docs.flutter.dev/get-started/codelab

