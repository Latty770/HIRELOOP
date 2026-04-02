# 🚀 HireLoop

**A Hyperlocal Service Listing & Booking Platform**

HireLoop is a modern, feature-rich Flutter application that connects service seekers with local service providers. Users can discover, search, rate, and book services from nearby professionals. The app includes real-time booking management, intelligent ranking algorithms, and integrated payment processing via M-Pesa.

---

## 📋 Table of Contents

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Configuration](#configuration)
- [Usage](#usage)
- [Architecture](#architecture)
- [Core Services](#core-services)
- [Database Schema](#database-schema)
- [Contributing](#contributing)
- [License](#license)

---

## ✨ Features

### For Users
- 🔍 **Smart Search & Discovery** - Find services by name, type, or location
- 📍 **Location-Based Services** - Discover providers near you using geolocation
- ⭐ **Intelligent Ranking** - Services ranked by rating, price, and availability
- 📅 **Easy Booking** - Schedule services with your preferred date and time
- 💬 **In-App Messaging** - Real-time chat with service providers
- 💳 **Integrated Payment** - Secure M-Pesa payment processing
- 📊 **User Dashboard** - Track bookings, history, and transaction records
- 🔐 **Secure Authentication** - Firebase authentication with email/password
- 🎨 **Dark Mode Support** - Customizable theme preferences
- 🔔 **Push Notifications** - Get booking updates and service offers

### For Service Providers
- 📝 **Business Profile** - Showcase services with descriptions and images
- 📈 **Analytics Dashboard** - Monitor bookings and earnings
- ⏰ **Availability Management** - Set working hours and availability status
- 💰 **Transaction History** - Track all earnings and payments
- 📱 **Mobile-Friendly** - Manage business on the go

### Platform Features
- 🌐 **Real-Time Database** - Cloud Firestore integration for live data sync
- 🖼️ **Image Management** - Firebase Storage for profile and service images
- 📡 **Firebase Messaging** - Cloud messaging for push notifications
- 🗺️ **Geolocation Services** - Google Maps integration for location-based discovery
- 🔄 **Seamless UX** - Bottom navigation with smooth page transitions

---

## � Screenshots

### Authentication
<table>
  <tr>
    <td><img src="images/login.jpg" width="250" alt="Login Screen"></td>
    <td><img src="images/signup.jpg" width="250" alt="Signup Screen"></td>
    <td><img src="images/girl.jpg" width="250" alt="User Profile"></td>
  </tr>
  <tr>
    <td align="center"><b>Login Screen</b></td>
    <td align="center"><b>Signup Screen</b></td>
    <td align="center"><b>Profile</b></td>
  </tr>
</table>

### Service Discovery
<table>
  <tr>
    <td><img src="images/cleaning.png" width="250" alt="Cleaning Services"></td>
    <td><img src="images/laundry.png" width="250" alt="Laundry Services"></td>
    <td><img src="images/painting.png" width="250" alt="Painting Services"></td>
  </tr>
  <tr>
    <td align="center"><b>Cleaning Services</b></td>
    <td align="center"><b>Laundry Services</b></td>
    <td align="center"><b>Painting Services</b></td>
  </tr>
</table>

### Additional Services
<table>
  <tr>
    <td><img src="images/reparing.png" width="250" alt="Repair Services"></td>
    <td><img src="images/boy.jpg" width="250" alt="Service Provider"></td>
    <td><img src="images/profile.jpg" width="250" alt="Profile Management"></td>
  </tr>
  <tr>
    <td align="center"><b>Repair Services</b></td>
    <td align="center"><b>Service Provider</b></td>
    <td align="center"><b>Profile Management</b></td>
  </tr>
</table>

---

## �🛠️ Tech Stack

### Frontend
- **Framework**: [Flutter](https://flutter.dev/) - Cross-platform mobile development
- **Language**: [Dart](https://dart.dev/) - Object-oriented programming language
- **State Management**: Provider pattern with Flutter widgets
- **UI Components**: Material Design, Cupertino Icons

### Backend Services
- **Authentication**: Firebase Authentication
- **Database**: Cloud Firestore (NoSQL)
- **File Storage**: Firebase Cloud Storage
- **Push Notifications**: Firebase Cloud Messaging (FCM)
- **Maps & Location**: Google Maps, Geocoding, Geolocator

### Payment Integration
- **Payment Gateway**: M-Pesa Flutter Plugin

### Development Tools
- **Version Control**: Git
- **Package Manager**: Pub (Dart package manager)
- **Build Tools**: Flutter CLI, Gradle (Android), Xcode (iOS)

### Dependencies (Key)
```yaml
firebase_core: ^2.24.2
firebase_auth: ^4.2.5
cloud_firestore: ^4.5.0
firebase_storage: ^11.0.7
firebase_messaging: ^14.7.9
geolocator: ^10.1.0
geocoding: ^2.1.1
image_picker: ^1.0.7
mpesa_flutter_plugin: ^1.3.0
shared_preferences: ^2.2.2
curved_navigation_bar: ^1.0.3
```

---

## 📁 Project Structure

```
service_listing_app/
├── lib/
│   ├── main.dart                 # App entry point, Firebase initialization
│   ├── pages/                    # UI screens and pages
│   │   ├── home.dart            # Home screen with provider listings
│   │   ├── service_list_page.dart # Service browsing and filtering
│   │   ├── service_provider_page.dart # Provider profile details
│   │   ├── login.dart           # User authentication
│   │   ├── signup.dart          # User registration
│   │   ├── bookpage.dart        # Booking management
│   │   ├── checkout.dart        # Payment processing
│   │   ├── profile.dart         # User profile settings
│   │   ├── provider_dashboard.dart # Provider analytics
│   │   ├── chat.dart            # In-app messaging
│   │   ├── order.dart           # Order/booking details
│   │   ├── transactions_page.dart # Payment history
│   │   ├── bottomNav.dart       # Navigation bar component
│   │   └── forgot_password.dart # Password recovery
│   │
│   ├── services/                # Business logic and integrations
│   │   ├── auth_service.dart              # Firebase auth operations
│   │   ├── firestore_service.dart         # Firestore CRUD operations
│   │   ├── firebase_seeder.dart           # Initial data population
│   │   ├── firestore_initializer.dart     # Firestore setup helper
│   │   ├── location_service.dart          # Geolocation services
│   │   ├── places_service.dart            # Google Places integration
│   │   ├── chat_service.dart              # Real-time messaging
│   │   ├── notification_service.dart      # Push notifications (FCM)
│   │   ├── inapp_notification_service.dart # In-app alerts
│   │   ├── ranking_service.dart           # Intelligent ranking algorithm
│   │   ├── mpesa_service.dart             # M-Pesa payment integration
│   │   ├── theme_service.dart             # Theme management
│   │
│   └── data/                    # Data models and constants
│       ├── mock_providers.dart  # Service provider models
│
├── android/                     # Android native code
│   ├── app/
│   │   ├── google-services.json # Firebase configuration
│   │   └── build.gradle.kts
│   ├── gradle.properties
│   └── settings.gradle.kts
│
├── ios/                         # iOS native code
│   ├── Runner/
│   ├── Runner.xcodeproj
│   └── Runner.xcworkspace
│
├── web/                         # Web platform files
│   ├── index.html
│   ├── manifest.json
│   └── icons/
│
├── windows/                     # Windows platform files
│   ├── CMakeLists.txt
│   └── runner/
│
├── linux/                       # Linux platform files
│   ├── CMakeLists.txt
│   └── runner/
│
├── pubspec.yaml                 # Project dependencies and metadata
├── analysis_options.yaml        # Dart linting rules
├── devtools_options.yaml        # DevTools configuration
├── FIRESTORE_INTEGRATION.md     # Firebase setup documentation
└── README.md                    # This file
```

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (version 3.10.7 or higher)
- Dart SDK (comes with Flutter)
- Git
- Android Studio / Xcode (for running on emulators)
- Firebase account (for cloud services)

### Installation

**1. Clone the repository:**
```bash
git clone https://github.com/yourusername/hireloop.git
cd service_listing_app
```

**2. Install dependencies:**
```bash
flutter pub get
```

**3. Set up Firebase:**
- Create a Firebase project at [Firebase Console](https://console.firebase.google.com)
- Download `google-services.json` from Firebase Console
- Place it in `android/app/` directory
- Enable the following Firebase services:
  - Authentication (Email/Password)
  - Cloud Firestore
  - Cloud Storage
  - Cloud Messaging
  - Database Rules (See [FIRESTORE_INTEGRATION.md](FIRESTORE_INTEGRATION.md))

**4. Configure Google Maps:**
- Obtain API keys from [Google Cloud Console](https://console.cloud.google.com)
- Add to `AndroidManifest.xml` and `Info.plist`

**5. Run the app:**

For Android:
```bash
flutter run -d android
```

For iOS:
```bash
flutter run -d ios
```

For Web:
```bash
flutter run -d web
```

---

## ⚙️ Configuration

### Firebase Setup

Refer to [FIRESTORE_INTEGRATION.md](FIRESTORE_INTEGRATION.md) for detailed Firebase configuration.

**Quick Setup:**
1. Initialize Firestore with mock data (automatic on first launch)
2. Set up security rules in Firebase Console
3. Configure authentication methods

### Environment Variables

Create a `.env` file or use Firebase configuration files:
- Firebase Project ID
- API Keys for Google Maps
- M-Pesa merchant credentials

### Firestore Security Rules

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Public: Anyone can read providers
    match /providers/{providerId} {
      allow read: if true;
      allow write: if request.auth != null;
    }
    
    // Private: Users can only see their own bookings
    match /bookings/{bookingId} {
      allow read: if request.auth != null && 
                     request.auth.uid == resource.data.userId;
      allow create: if request.auth != null;
      allow update: if request.auth != null && 
                       request.auth.uid == resource.data.userId;
    }
  }
}
```

---

## 💻 Usage

### For Users

**1. Sign Up / Login**
- Open the app and create an account with email/password
- Or login with existing credentials

**2. Browse Services**
- View available services on the home page
- Use search to find specific services by name or type
- Use location filters to find nearby providers

**3. Book a Service**
- Tap on a service provider
- Select desired date and time
- Proceed to checkout
- Complete payment via M-Pesa

**4. Track Bookings**
- View active and past bookings in your dashboard
- Chat with service providers
- Rate completed services

### For Service Providers

**1. Create Service Profile**
- Sign up as a provider
- Add business details and service descriptions
- Upload profile picture and service images

**2. Manage Availability**
- Set working hours
- Mark availability status
- Update service pricing

**3. Monitor Business**
- View upcoming bookings in dashboard
- Track earnings and transactions
- Update availability in real-time

---

## 🏗️ Architecture

### Application Flow

```
User Launch
    ↓
Firebase Initialization
    ↓
Authentication Check
    ↓
├─ Not Logged In → Login/Signup Page
└─ Logged In → Home Page (BottomNav)
    ↓
Navigation Tabs:
├─ Home → Service Discovery
├─ Search → Service Filtering & Ranking
├─ Bookings → User Bookings Page
├─ Chat → Messaging with Providers
├─ Transactions → Payment History
└─ Profile → User Settings
```

### Key Components

#### RankingService
Intelligent algorithm that scores and ranks service providers based on:
- **Rating Score** (50% weight): 0-5 star ratings normalized to 0-1
- **Price Score** (30% weight): Lower prices ranked higher
- **Availability Score** (20% weight): Providers available during requested hours

```dart
Total Score = (ratingScore × 0.5) + (priceScore × 0.3) + (availabilityScore × 0.2)
```

#### FirestoreService
Handles all database operations:
- Add/retrieve/update service providers
- Manage bookings
- Real-time provider stream
- Filtering by service type and location

#### AuthService
Manages user authentication:
- Email/password signup and login
- Password reset
- User session management
- Profile information

#### LocationService
Provides geolocation features:
- Get user's current location
- Geocode addresses
- Calculate distance to providers
- Location-based filtering

#### ChatService
Real-time messaging:
- Send/receive messages
- Message persistence in Firestore
- Real-time notifications
- Chat history

---

## 🗄️ Database Schema

### Firestore Collections

**providers/** - Service provider profiles
```json
{
  "providerId": "string",
  "name": "string",
  "businessName": "string",
  "serviceType": "string",
  "price": "string",
  "location": "string",
  "phone": "string",
  "description": "string",
  "rating": "number",
  "image": "string (URL)",
  "isAvailable": "boolean",
  "workingHours": "object",
  "createdAt": "timestamp"
}
```

**bookings/** - User bookings
```json
{
  "bookingId": "string",
  "userId": "string",
  "providerId": "string",
  "serviceType": "string",
  "date": "string",
  "time": "string",
  "status": "pending|confirmed|completed|cancelled",
  "totalPrice": "string",
  "paymentMethod": "string",
  "createdAt": "timestamp"
}
```

**messages/** - Chat messages
```json
{
  "messageId": "string",
  "chatRoomId": "string",
  "senderId": "string",
  "receiverId": "string",
  "message": "string",
  "timestamp": "timestamp",
  "isRead": "boolean"
}
```

---

## 🔐 Security

- **Authentication**: Firebase Authentication with email/password
- **Authorization**: Firestore Security Rules enforce access control
- **Data Encryption**: Firebase handles encryption in transit and at rest
- **Image Storage**: Firebase Cloud Storage with access controls
- **Payment**: M-Pesa handles sensitive payment data

---

## 📱 Supported Platforms

- ✅ Android (API 21+)
- ✅ iOS (11.0+)
- ✅ Web (Chrome, Safari, Firefox)
- ✅ Windows (10+)
- ✅ Linux (Ubuntu 18.04+)
- ✅ macOS (10.11+)

---

## 🐛 Troubleshooting

### Common Issues

**Firebase connection errors:**
- Ensure `google-services.json` is in `android/app/`
- Verify Firebase project settings
- Check Firestore Security Rules

**Location permission denied:**
- Grant location permissions in app settings
- Ensure device location services are enabled

**Payment integration issues:**
- Verify M-Pesa merchant credentials
- Check M-Pesa test configuration
- Review transaction logs in M-Pesa console

**Push notifications not working:**
- Verify FCM is enabled in Firebase Console
- Check app has notification permissions
- Ensure device is connected to internet

---

## 📚 Additional Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Firebase Documentation](https://firebase.google.com/docs)
- [Dart Language Guide](https://dart.dev/guides)
- [Material Design Guidelines](https://material.io/design)
- [Google Maps API](https://developers.google.com/maps)

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

Please ensure:
- Code follows Dart style guidelines
- All tests pass
- New features include documentation
- Commits have clear messages

---

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

## 👥 Team & Support

**Project Maintainer**: Your Name / Your Organization

For questions, bug reports, or feature requests:
- 📧 Email: support@hireloop.app
- 🐛 GitHub Issues: [Report a bug](https://github.com/yourusername/hireloop/issues)
- 💬 Discussion: [Start a discussion](https://github.com/yourusername/hireloop/discussions)

---

## 🙏 Acknowledgments

- Flutter team for an amazing framework
- Firebase for backend services
- All contributors and community members

---

**Made with ❤️ by HireLoop Team**

---

*Last Updated: April 2, 2026*
*Version: 1.0.0*
