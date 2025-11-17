# Mental Health Analysis App

A comprehensive Flutter-based mobile application designed to support mental health and wellness through personalized assessments, journaling, motivational content, and community volunteering opportunities.

## Overview

This app provides users with tools to assess, track, and improve their mental health through:
- AI-powered mental health questionnaires tailored to different age groups
- Personal journaling for self-reflection
- Mood-based blog articles and motivational videos
- Reminder system for mental health activities
- Volunteering opportunities to support mental health causes

## Features

### 1. Age-Adaptive Mental Health Assessment
- **Three Age Categories**: Different question sets optimized for:
  - Under 18: Focus on emotions, friendships, and coping mechanisms
  - 18-40: Focus on stress, work-life balance, and concentration
  - Over 40: Focus on loneliness, memory, anxiety, and sleep patterns
- **AI-Powered Analysis**: Utilizes OpenAI GPT-3.5-turbo to analyze responses
- **Mental State Classification**: Categorizes user's mental state as depressed, motivated, happy, or normal
- Results stored in user profile for personalized content delivery

### 2. Personal Journaling
- Create daily journal entries with title and description
- Automatic date and time stamping
- View and manage all journal entries
- Persistent storage in Firebase Firestore

### 3. Motivational Content
- **Blog Articles**: Access to 4,500+ curated articles categorized by mental state
- **Motivational Videos**: 19 handpicked inspirational videos from renowned speakers including Steve Jobs, Jim Carrey, and Casey Neistat
- Content personalized based on user's current mental health status

### 4. Volunteering System
- Browse mental health-related volunteer opportunities
- Search activities by location
- Sponsors can create and manage volunteer activities with images, descriptions, and schedules
- Track engagement through activity counter

### 5. Smart Reminders
- Schedule reminders for mental health activities
- Local push notifications
- Timezone-aware (configured for Asia/Kolkata)
- Persistent across device reboots

### 6. User Profile Management
- View and manage personal information
- Quick access to mental health assessment
- Track mental health journey
- Secure authentication

## Screenshots

The app features a clean, modern interface with:
- Dashboard with grid-based navigation
- Beautiful pink (#FF2C5E) and teal (#2C5E5D) color scheme
- Poppins font family for enhanced readability
- Material Design components

## Tech Stack

### Frontend
- **Framework**: Flutter SDK >=3.2.0
- **Language**: Dart
- **UI Library**: Material Design
- **Fonts**: Google Fonts (Poppins)

### Backend & Services
- **Firebase Authentication**: User authentication and management
- **Cloud Firestore**: Real-time NoSQL database
- **Firebase Storage**: Image storage for volunteer activities
- **Firebase App Check**: Security layer
- **OpenAI API**: GPT-3.5-turbo for mental health analysis

### Key Dependencies
```yaml
firebase_core: ^2.18.0
firebase_auth: ^4.11.0
cloud_firestore: ^4.10.0
firebase_storage: ^11.4.1
google_fonts: ^6.1.0
flutter_local_notifications: ^16.1.0
http: ^1.1.0
image_picker: ^1.0.4
url_launcher: ^6.2.1
```

## Project Structure

```
lib/
├── bin/
│   └── firebase_options.dart       # Firebase configuration
├── models/
│   ├── article_model.dart          # Blog article data model
│   ├── jouranl_model.dart          # Journal entry model
│   └── source_model.dart           # Article source model
├── resources/
│   ├── authmethods.dart            # Authentication logic
│   ├── dbmethods.dart              # Database operations
│   └── storagemethods.dart         # File storage operations
├── screens/
│   ├── auth/                       # Login & Signup screens
│   ├── journal/                    # Journal management screens
│   ├── motivational/               # Blog & video screens
│   ├── questioner/                 # Mental health assessment screens
│   ├── remainder/                  # Reminder creation screen
│   ├── volunteering/               # Volunteer activity screens
│   ├── dashboard.dart              # Main dashboard
│   └── profile_screen.dart         # User profile
├── services/
│   ├── blog_services.dart          # Blog article data service
│   └── openaiservices.dart         # OpenAI API integration
├── utils/                          # Helper functions & utilities
├── widgets/                        # Reusable UI components
└── main.dart                       # App entry point
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.2.0-210.2.beta <4.0.0)
- Android Studio or VS Code with Flutter extensions
- Android SDK for Android builds
- Xcode for iOS builds (macOS only)
- Firebase account with a configured project

### Firebase Setup

1. **Create a Firebase Project**:
   - Go to [Firebase Console](https://console.firebase.google.com/)
   - Create a new project or use an existing one

2. **Register Your App**:
   - Add Android and/or iOS app to your Firebase project
   - Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
   - Place them in the appropriate directories

3. **Enable Firebase Services**:
   - **Authentication**: Enable Email/Password sign-in method
   - **Firestore Database**: Create database in production or test mode
   - **Storage**: Enable Firebase Storage
   - **App Check**: Configure App Check (optional but recommended)

4. **Firestore Collections**:
   Create the following collections:
   - `users` - User profiles and mental health data
   - `jouranls` - Journal entries (nested under users)
   - `activities` - Volunteer opportunities
   - `remainder` - User reminders (nested under users)

### Installation

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd mental-health-analysis-app-flutter
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Configure API Keys**:

   **IMPORTANT**: The app currently has exposed API keys in the source code. Before running:

   - Create a `.env` file or secure configuration
   - Replace hardcoded API keys in:
     - `lib/services/openaiservices.dart` - OpenAI API key
     - `lib/services/blog_services.dart` - News API key

   **Never commit API keys to version control!**

4. **Run the App**:
   ```bash
   # Check connected devices
   flutter devices

   # Run on connected device/emulator
   flutter run
   ```

### Android Permissions

The app requires the following permissions (configured in `AndroidManifest.xml`):
- `INTERNET` - API calls and data sync
- `SCHEDULE_EXACT_ALARM` - Precise reminder scheduling
- `NOTIFICATION_POLICY` - Notification access
- `RECEIVE_BOOT_COMPLETED` - Persist reminders after reboot
- `WAKE_LOCK` - Wake device for notifications
- `VIBRATE` - Vibration for notifications
- `READ_EXTERNAL_STORAGE` - Image selection for activities

## Usage

### For Regular Users

1. **Sign Up / Login**: Create an account with email and password
2. **Take Assessment**: Complete the age-appropriate mental health questionnaire
3. **View Results**: Get AI-powered analysis of your mental state
4. **Explore Content**: Access personalized blog articles and videos
5. **Journal**: Write daily reflections and track your thoughts
6. **Set Reminders**: Schedule notifications for mental health activities
7. **Volunteer**: Browse and participate in mental health volunteer opportunities

### For Sponsors

Sponsors (accounts with special privileges) can:
- Create volunteer activities with images, descriptions, and schedules
- Manage existing activities
- Help connect users with mental health support opportunities

**Special account**: `sponser@gmail.com` is redirected to activity creation

## Architecture

### State Management
- Uses Flutter's built-in `setState` for state management
- Direct Firebase stream listeners in widgets
- No external state management library (Provider, Riverpod, Bloc)

### Data Flow
1. **Authentication**: Firebase Auth → User creation → Firestore profile
2. **Assessment**: User answers → OpenAI API → Mental state analysis → Firestore update
3. **Content**: User mood → Filtered articles/videos → Display
4. **Storage**: Images → Firebase Storage → Download URLs → Firestore

### Database Schema

**Users Collection**:
```
users/{userId}
├── email: string
├── password: string (⚠️ security concern)
├── uid: string
├── name: string
├── age: number
├── mental_health: string
└── mood: string
```

**Journals Subcollection**:
```
users/{userId}/jouranls/{journalId}
├── title: string
├── description: string
├── date: string
└── time: string
```

**Activities Collection**:
```
activities/{activityId}
├── title: string
├── description: string
├── imageUrl: string
├── date: string
├── time: string
├── location: string
└── counter: number
```

## Security Considerations

### Critical Issues

1. **Exposed API Keys** ⚠️:
   - OpenAI API key is hardcoded in `lib/services/openaiservices.dart`
   - News API key is hardcoded in `lib/services/blog_services.dart`
   - **Action Required**: Move to environment variables or backend proxy

2. **Password Storage** ⚠️:
   - User passwords stored in plaintext in Firestore
   - **Action Required**: Remove password field; Firebase Auth handles authentication

3. **Firebase App Check** ⚠️:
   - Currently using debug provider
   - **Action Required**: Switch to PlayIntegrity or SafetyNet for production

### Recommendations

- Implement environment variables for API keys
- Use backend proxy for sensitive API calls
- Remove password field from Firestore
- Enable Firebase App Check with production providers
- Implement proper error boundaries
- Add offline support with local caching
- Implement rate limiting for API calls
- Add data encryption for sensitive information

## Known Issues

1. **Typos**: Collection named "jouranls" instead of "journals", "remainder" instead of "reminder"
2. **Hardcoded Data**: Blog articles appear to be cached/hardcoded (4,565 lines) rather than fetched dynamically
3. **Limited Error Handling**: Basic error handling in UI layers
4. **No Offline Mode**: Requires internet connection for most features
5. **Security Vulnerabilities**: See Security Considerations section

## Future Enhancements

- [ ] Implement advanced state management (Provider/Riverpod)
- [ ] Add offline support with local database
- [ ] Implement data encryption
- [ ] Add multi-language support
- [ ] Include data visualization for mental health trends
- [ ] Add in-app chat with mental health professionals
- [ ] Implement push notifications from backend
- [ ] Add social features for peer support
- [ ] Create web and desktop versions
- [ ] Implement unit and integration tests

## Testing

```bash
# Run unit tests
flutter test

# Run integration tests
flutter test integration_test

# Generate coverage report
flutter test --coverage
```

## Building for Production

### Android
```bash
# Build APK
flutter build apk --release

# Build App Bundle (recommended for Play Store)
flutter build appbundle --release
```

### iOS
```bash
# Build iOS app
flutter build ios --release
```

**Before production deployment**:
1. Fix all security vulnerabilities
2. Remove hardcoded API keys
3. Switch Firebase App Check to production mode
4. Update app icons and splash screens
5. Configure proper signing certificates
6. Test on multiple devices and OS versions

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

**Please ensure**:
- Code follows Flutter best practices
- All tests pass
- No API keys or sensitive data in commits
- Documentation is updated

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- OpenAI for GPT-3.5-turbo API
- Firebase for backend infrastructure
- Flutter team for the amazing framework
- All contributors and mental health advocates

## Support

For support, please open an issue in the GitHub repository or contact the development team.

## Disclaimer

This app is designed to support mental health awareness and self-care. It is **not a substitute for professional mental health care**. If you're experiencing a mental health crisis, please contact:
- Emergency Services: 911 (US) or your local emergency number
- National Suicide Prevention Lifeline: 1-800-273-8255 (US)
- Crisis Text Line: Text HOME to 741741 (US)

Always consult with qualified mental health professionals for diagnosis and treatment.

---

**Version**: 1.0.0
**Last Updated**: November 2025
**Flutter SDK**: >=3.2.0-210.2.beta <4.0.0
